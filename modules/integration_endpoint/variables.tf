variable "create" {
  description = "Controls if resources should be created."
  type        = bool
  default     = true
}

variable "endpoint_name" {
  description = "Name of the service integration endpoint."
  type        = string
}

variable "endpoint_type" {
  description = "Type of the service integration endpoint."
  type        = string
}

variable "project" {
  description = "Aiven Cloud Project Name."
  type        = string
}

variable "datadog_user_config" {
  description = "Datadog specific user configurable settings."
  type        = list(any)
  default     = []
}

variable "external_aws_cloudwatch_metrics_user_config" {
  description = "External AWS cloudwatch mertrics specific user configurable settings."
  type        = list(any)
  default     = []
}

variable "external_aws_cloudwatch_logs_user_config" {
  description = "External AWS CloudWatch Logs specific user configurable settings."
  type        = list(any)
  default     = []
}

variable "external_elasticsearch_logs_user_config" {
  description = "External Elasticsearch specific user configurable settings."
  type        = list(any)
  default     = []
}

variable "external_google_cloud_logging_user_config" {
  description = "External Google Cloud Logginig specific user configurable settings."
  type        = list(any)
  default     = []
}

variable "external_kafka_user_config" {
  description = "External Kafka specific user configurable settings."
  type        = list(any)
  default     = []
}

variable "external_schema_registry_user_config" {
  description = "External schema registry specific user configurable settings."
  type        = list(any)
  default     = []
}

variable "jolokia_user_config" {
  description = "Jolokia specific user configurable settings."
  type        = list(any)
  default     = []
}

variable "prometheus_user_config" {
  description = "Prometheus specific user configurable settings."
  type        = list(any)
  default     = []
}

variable "rsyslog_user_config" {
  description = "Rsyslog specific user configurable settings."
  type        = list(any)
  default     = []
}

variable "signalfx_user_config" {
  description = "Signalfx specific user configurable settings."
  type        = list(any)
  default     = []
}