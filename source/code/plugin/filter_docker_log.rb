# Copyright (c) Microsoft Corporation.  All rights reserved.

module Fluent
	require 'logger'
	require 'socket'

	class DockerLogFilter < Filter
		Plugin.register_filter('filter_docker_log', self)
		
		# Set to 1 in config file to enable logging
		config_param :enable_log, :integer, :default => 0
		config_param :log_path, :string, :default => '/var/opt/microsoft/omsagent/log/filter_docker_log.txt'
		
		# This method is called before starting.
		def configure(conf)
			super
			@hostname = Socket.gethostname
			@log = nil
			
			if @enable_log
				@log = Logger.new(@log_path, 'weekly')
				@log.debug {'Starting filter_docker_log plugin on ' + @hostname}
			end
		end
		
		def filter(tag, time, record)
			if @log != nil
				@log.debug {'Accepted a log from container ' + record['container_id']}
			end
			
			wrapper = Hash.new
			
			if record['log'].empty?
				if @log != nil
					@log.debug {'Log from container ' + record['container_id'] + ' had length 0 and will be discarded'}
				end
			else
				# Need to query image information from ID
				newRecord = obtainImageId(record['container_id'])
				
				# No query is required
				newRecord['Id'] = record['container_id']
				newRecord['Name'] = record['container_name'][0] == "/" ?  record['container_name'][1..-1] : record['container_name']
				newRecord['LogEntrySource'] = record['source']
				newRecord['LogEntry'] = record['log']
				newRecord['Computer'] = @hostname
				newRecord['Host'] = @hostname
				
				wrapper = {
					"DataType"=>"CONTAINER_LOG_BLOB",
					"IPName"=>"Containers",
					"DataItems"=>[newRecord]
				}
			end
			
			wrapper
		end
		
		# Get image ID from container
		def obtainImageId(containerId)
			result = Hash.new
		
			details = ''
			
			begin
				details = JSON.parse(`sudo docker inspect #{containerId}`)
			rescue => e
				if @log != nil
					@log.error {'sudo docker inspect ' + containerId + ' failed'}
				end
			end
			
			if details.empty?
				# This should not occur
				result['Image'] = 'Unknown'
				result['ImageName'] = 'Unknown'
				
				if @log != nil
					@log.warn {'The image ID of container ' + containerId + ' could not be determined'}
				end
			else
				result['Image'] = details[0]['Image']
				result['ImageName'] = details[0]['Config']['Image']
			end
			
			result
		end
	end
end