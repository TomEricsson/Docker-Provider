# frozen_string_literal: true

class Constants
    INSIGHTSMETRICS_TAGS_ORIGIN = "container.azm.ms"
    INSIGHTSMETRICS_TAGS_CLUSTERID = "container.azm.ms/clusterId"
    INSIGHTSMETRICS_TAGS_CLUSTERNAME = "container.azm.ms/clusterName"
    INSIGHTSMETRICS_TAGS_GPU_VENDOR = "gpuVendor"
    INSIGHTSMETRICS_TAGS_GPU_NAMESPACE = "container.azm.ms/gpu"
    INSIGHTSMETRICS_TAGS_GPU_MODEL = "gpuModel"
    INSIGHTSMETRICS_TAGS_GPU_ID = "gpuId"
    INSIGHTSMETRICS_TAGS_CONTAINER_NAME = "containerName"
    INSIGHTSMETRICS_TAGS_CONTAINER_ID = "containerName"
    INSIGHTSMETRICS_TAGS_K8SNAMESPACE = "k8sNamespace"
    INSIGHTSMETRICS_TAGS_CONTROLLER_NAME = "controllerName"
    INSIGHTSMETRICS_TAGS_CONTROLLER_KIND = "controllerKind"
    INSIGHTSMETRICS_TAGS_POD_UID = "podUID"
    INSIGTHTSMETRICS_TAGS_PV_NAMESPACE = "container.azm.ms/pv"
    INSIGHTSMETRICS_TAGS_VOLUME_NAME = "volumeName"
    INSIGHTSMETRICS_TAGS_PVC_NAME = "pvcName"
    INSIGHTSMETRICS_TAGS_PVC_NAMESPACE = "pvcNamespace"
    INSIGHTSMETRICS_TAGS_POD_NAME = "podName"
    INSIGHTSMETRICS_TAGS_PV_CAPACITY_BYTES = "pvCapacityBytes"
    INSIGHTSMETRICS_FLUENT_TAG = "oms.api.InsightsMetrics"
    REASON_OOM_KILLED = "oomkilled"
    #Kubestate (common)
    INSIGHTSMETRICS_TAGS_KUBESTATE_NAMESPACE = "container.azm.ms/kubestate"
    INSIGHTSMETRICS_TAGS_KUBE_STATE_CREATIONTIME = "creationTime"
    #Kubestate (deployments)
    INSIGHTSMETRICS_METRIC_NAME_KUBE_STATE_DEPLOYMENT_STATE = "kube_deployment_status_replicas_ready"
    INSIGHTSMETRICS_TAGS_KUBE_STATE_DEPLOYMENT_NAME = "deployment"
    INSIGHTSMETRICS_TAGS_KUBE_STATE_DEPLOYMENT_CREATIONTIME = "creationTime"
    INSIGHTSMETRICS_TAGS_KUBE_STATE_DEPLOYMENT_STRATEGY = "deploymentStrategy"
    INSIGHTSMETRICS_TAGS_KUBE_STATE_DEPLOYMENT_SPEC_REPLICAS = "spec_replicas"
    INSIGHTSMETRICS_TAGS_KUBE_STATE_DEPLOYMENT_STATUS_REPLICAS_UPDATED = "status_replicas_updated"
    INSIGHTSMETRICS_TAGS_KUBE_STATE_DEPLOYMENT_STATUS_REPLICAS_AVAILABLE = "status_replicas_available"
    #Kubestate (HPA)
    INSIGHTSMETRICS_METRIC_NAME_KUBE_STATE_HPA_STATE = "kube_hpa_status_current_replicas"
    INSIGHTSMETRICS_TAGS_KUBE_STATE_HPA_NAME = "hpa"
    INSIGHTSMETRICS_TAGS_KUBE_STATE_HPA_SPEC_MAX_REPLICAS = "spec_max_replicas"
    INSIGHTSMETRICS_TAGS_KUBE_STATE_HPA_SPEC_MIN_REPLICAS = "spec_min_replicas"
    INSIGHTSMETRICS_TAGS_KUBE_STATE_HPA_SPEC_SCALE_TARGET_KIND = "targetKind"
    INSIGHTSMETRICS_TAGS_KUBE_STATE_HPA_SPEC_SCALE_TARGET_NAME = "targetName"
    INSIGHTSMETRICS_TAGS_KUBE_STATE_HPA_STATUS_DESIRED_REPLICAS = "status_desired_replicas"
    
    INSIGHTSMETRICS_TAGS_KUBE_STATE_HPA_STATUS_LAST_SCALE_TIME = "lastScaleTime"
    # MDM Metric names
    MDM_OOM_KILLED_CONTAINER_COUNT = "oomKilledContainerCount"
    MDM_CONTAINER_RESTART_COUNT = "restartingContainerCount"
    MDM_POD_READY_PERCENTAGE = "podReadyPercentage"
    MDM_STALE_COMPLETED_JOB_COUNT = "completedJobsCount"
    MDM_DISK_USED_PERCENTAGE = "diskUsedPercentage"
    MDM_CONTAINER_CPU_UTILIZATION_METRIC = "cpuExceededPercentage"
    MDM_CONTAINER_MEMORY_RSS_UTILIZATION_METRIC = "memoryRssExceededPercentage"
    MDM_CONTAINER_MEMORY_WORKING_SET_UTILIZATION_METRIC = "memoryWorkingSetExceededPercentage"
    MDM_PV_UTILIZATION_METRIC = "pvUsageExceededPercentage"
    MDM_NODE_CPU_USAGE_PERCENTAGE = "cpuUsagePercentage"
    MDM_NODE_MEMORY_RSS_PERCENTAGE = "memoryRssPercentage"
    MDM_NODE_MEMORY_WORKING_SET_PERCENTAGE = "memoryWorkingSetPercentage"

    CONTAINER_TERMINATED_RECENTLY_IN_MINUTES = 5
    OBJECT_NAME_K8S_CONTAINER = "K8SContainer"
    OBJECT_NAME_K8S_NODE = "K8SNode"
    CPU_USAGE_NANO_CORES = "cpuUsageNanoCores"
    CPU_USAGE_MILLI_CORES = "cpuUsageMillicores"
    MEMORY_WORKING_SET_BYTES= "memoryWorkingSetBytes"
    MEMORY_RSS_BYTES = "memoryRssBytes"
    PV_USED_BYTES = "pvUsedBytes"
    DEFAULT_MDM_CPU_UTILIZATION_THRESHOLD = 95.0
    DEFAULT_MDM_MEMORY_RSS_THRESHOLD = 95.0
    DEFAULT_MDM_MEMORY_WORKING_SET_THRESHOLD = 95.0
    DEFAULT_MDM_PV_UTILIZATION_THRESHOLD = 60.0
    CONTROLLER_KIND_JOB = "job"
    CONTAINER_TERMINATION_REASON_COMPLETED = "completed"
    CONTAINER_STATE_TERMINATED = "terminated"
    STALE_JOB_TIME_IN_MINUTES = 360
    TELEGRAF_DISK_METRICS = "container.azm.ms/disk"
    OMSAGENT_ZERO_FILL = "omsagent"
    KUBESYSTEM_NAMESPACE_ZERO_FILL = "kube-system"
    PV_TYPES =["awsElasticBlockStore", "azureDisk", "azureFile", "cephfs", "cinder", "csi", "fc", "flexVolume",
      "flocker", "gcePersistentDisk", "glusterfs", "hostPath", "iscsi", "local", "nfs",
      "photonPersistentDisk", "portworxVolume", "quobyte", "rbd", "scaleIO", "storageos", "vsphereVolume"]

    #Telemetry constants
    CONTAINER_METRICS_HEART_BEAT_EVENT = "ContainerMetricsMdmHeartBeatEvent"
    POD_READY_PERCENTAGE_HEART_BEAT_EVENT = "PodReadyPercentageMdmHeartBeatEvent"
    CONTAINER_RESOURCE_UTIL_HEART_BEAT_EVENT = "ContainerResourceUtilMdmHeartBeatEvent"
    PV_USAGE_HEART_BEAT_EVENT = "PVUsageMdmHeartBeatEvent"
    PV_KUBE_SYSTEM_METRICS_ENABLED_EVENT = "CollectPVKubeSystemMetricsEnabled"
    PV_INVENTORY_HEART_BEAT_EVENT = "KubePVInventoryHeartBeatEvent"
    TELEMETRY_FLUSH_INTERVAL_IN_MINUTES = 10
    KUBE_STATE_TELEMETRY_FLUSH_INTERVAL_IN_MINUTES = 15
    MDM_TIME_SERIES_FLUSHED_IN_LAST_HOUR = "MdmTimeSeriesFlushedInLastHour"
end