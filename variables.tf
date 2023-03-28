variable "create" {
  description = "Controls if resources should be created."
  type        = bool
  default     = true
}

variable "integration_type" {
  description = " Type of the service integration."
  type        = string
}

variable "project" {
  description = "Aiven Cloud Project Name"
  type        = string
}

variable "destination_endpoint_id" {
  description = "Destination endpoint for the integration."
  type        = string
}

variable "source_service_name" {
  description = "Source service for the integration."
  type        = string
}

variable "destination_service_name" {
  description = "Destination service for the integration."
  type        = string
  default     = null
}

variable "kafka_connect_user_config" {
  description = "Kafka Connect specific user configurable settings."
  type        = list(any)
  default     = []
}

variable "kafka_logs_user_config" {
  description = "Kafka Logs specific user configurable settings."
  type        = list(any)
  default     = []
}

variable "kafka_mirrormaker_user_config" {
  description = "Mirrormaker 2 integration specific user configurable settings."
  type        = list(any)
  default     = []
}

variable "logs_user_config" {
  description = "Log integration specific user configurable settings."
  type        = list(any)
  default     = []
}

variable "metrics_user_config" {
  description = "Metrics specific user configurable settings."
  type        = list(any)
  default     = []
}