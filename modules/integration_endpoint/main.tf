resource "aiven_service_integration_endpoint" "this" {
  count         = var.create ? 1 : 0
  endpoint_name = var.endpoint_name
  endpoint_type = var.endpoint_type
  project       = var.project

  dynamic "datadog_user_config" {
    for_each = var.datadog_user_config
    content {
      datadog_api_key                = lookup(datadog_user_config.value, "datadog_api_key", null)
      disable_consumer_stats         = lookup(datadog_user_config.value, "disable_consumer_stats", null)
      kafka_consumer_check_instances = lookup(datadog_user_config.value, "kafka_consumer_check_instances", null)
      kafka_consumer_stats_timeout   = lookup(datadog_user_config.value, "kafka_consumer_stats_timeout", null)
      max_partition_contexts         = lookup(datadog_user_config.value, "max_partition_contexts", null)
      site                           = lookup(datadog_user_config.value, "site", null)

      dynamic "datadog_tags" {
        for_each = lookup(datadog_user_config.value, "datadog_tags", [])
        content {
          comment = lookup(datadog_tags.value, "comment", null)
          tag     = lookup(datadog_tags.value, "tag", null)
        }
      }
    }
  }

  dynamic "external_aws_cloudwatch_metrics_user_config" {
    for_each = var.external_aws_cloudwatch_metrics_user_config
    content {
      access_key = lookup(external_aws_cloudwatch_metrics_user_config.value, "access_key", null)
      namespace  = lookup(external_aws_cloudwatch_metrics_user_config.value, "namespace", null)
      region     = lookup(external_aws_cloudwatch_metrics_user_config.value, "region", null)
      secret_key = lookup(external_aws_cloudwatch_metrics_user_config.value, "secret_key", null)
    }
  }

  dynamic "external_aws_cloudwatch_logs_user_config" {
    for_each = var.external_aws_cloudwatch_logs_user_config
    content {
      access_key     = lookup(external_aws_cloudwatch_logs_user_config.value, "access_key", null)
      log_group_name = lookup(external_aws_cloudwatch_logs_user_config.value, "namespace", null)
      region         = lookup(external_aws_cloudwatch_logs_user_config.value, "region", null)
      secret_key     = lookup(external_aws_cloudwatch_logs_user_config.value, "secret_key", null)
    }
  }

  dynamic "external_elasticsearch_logs_user_config" {
    for_each = var.external_elasticsearch_logs_user_config
    content {
      ca             = lookup(external_elasticsearch_logs_user_config.value, "ca", null)
      index_days_max = lookup(external_elasticsearch_logs_user_config.value, "index_days_max", null)
      index_prefix   = lookup(external_elasticsearch_logs_user_config.value, "index_prefix", null)
      timeout        = lookup(external_elasticsearch_logs_user_config.value, "timeout", null)
      url            = lookup(external_elasticsearch_logs_user_config.value, "url", null)
    }
  }

  dynamic "external_google_cloud_logging_user_config" {
    for_each = var.external_google_cloud_logging_user_config
    content {
      log_id                      = lookup(external_google_cloud_logging_user_config.value, "log_id", null)
      project_id                  = lookup(external_google_cloud_logging_user_config.value, "project_id", null)
      service_account_credentials = lookup(external_google_cloud_logging_user_config.value, "service_account_credentials", null)
    }
  }

  dynamic "external_kafka_user_config" {
    for_each = var.external_kafka_user_config
    content {
      bootstrap_servers                     = lookup(external_kafka_user_config.value, "bootstrap_servers", null)
      sasl_mechanism                        = lookup(external_kafka_user_config.value, "sasl_mechanism", null)
      sasl_plain_password                   = lookup(external_kafka_user_config.value, "sasl_plain_password", null)
      sasl_plain_username                   = lookup(external_kafka_user_config.value, "sasl_plain_username", null)
      security_protocol                     = lookup(external_kafka_user_config.value, "security_protocol", null)
      ssl_ca_cert                           = lookup(external_kafka_user_config.value, "ssl_ca_cert", null)
      ssl_client_cert                       = lookup(external_kafka_user_config.value, "ssl_client_cert", null)
      ssl_client_key                        = lookup(external_kafka_user_config.value, "ssl_client_key", null)
      ssl_endpoint_identification_algorithm = lookup(external_kafka_user_config.value, "ssl_endpoint_identification_algorithm", null)
    }
  }

  dynamic "external_schema_registry_user_config" {
    for_each = var.external_schema_registry_user_config
    content {
      authentication      = lookup(external_schema_registry_user_config.value, "authentication", null)
      basic_auth_password = lookup(external_schema_registry_user_config.value, "basic_auth_password", null)
      basic_auth_username = lookup(external_schema_registry_user_config.value, "basic_auth_username", null)
      url                 = lookup(external_schema_registry_user_config.value, "url", null)
    }
  }

  dynamic "jolokia_user_config" {
    for_each = var.jolokia_user_config
    content {
      basic_auth_password = lookup(jolokia_user_config.value, "basic_auth_password", null)
      basic_auth_username = lookup(jolokia_user_config.value, "basic_auth_username", null)
    }
  }

  dynamic "prometheus_user_config" {
    for_each = var.prometheus_user_config
    content {
      basic_auth_username = lookup(prometheus_user_config.value, "basic_auth_username", null)
      basic_auth_password = lookup(prometheus_user_config.value, "basic_auth_password", null)
    }
  }

  dynamic "rsyslog_user_config" {
    for_each = var.rsyslog_user_config
    content {
      ca      = lookup(rsyslog_user_config.value, "ca", null)
      cert    = lookup(rsyslog_user_config.value, "cert", null)
      format  = lookup(rsyslog_user_config.value, "format", null)
      key     = lookup(rsyslog_user_config.value, "key", null)
      logline = lookup(rsyslog_user_config.value, "logline", null)
      port    = lookup(rsyslog_user_config.value, "port", null)
      sd      = lookup(rsyslog_user_config.value, "sd", null)
      server  = lookup(rsyslog_user_config.value, "server", null)
      tls     = lookup(rsyslog_user_config.value, "tls", null)
    }
  }

  dynamic "signalfx_user_config" {
    for_each = var.signalfx_user_config
    content {
      enabled_metrics  = lookup(signalfx_user_config.value, "enabled_metrics", null)
      signalfx_api_key = lookup(signalfx_user_config.value, "signalfx_api_key", null)
      signalfx_realm   = lookup(signalfx_user_config.value, "signalfx_realm", null)
    }
  }
}