resource "aiven_service_integration" "this" {
  count                    = var.create ? 1 : 0
  integration_type         = var.integration_type
  project                  = var.project
  destination_endpoint_id  = var.destination_endpoint_id
  source_service_name      = var.source_service_name
  destination_service_name = var.destination_service_name

  dynamic "kafka_connect_user_config" {
    for_each = var.kafka_connect_user_config
    content {
      dynamic "kafka_connect" {
        for_each = lookup(kafka_connect_user_config.value, "kafka_connect", [])
        content {
          config_storage_topic = lookup(kafka_connect.value, "config_storage_topic", null)
          group_id             = lookup(kafka_connect.value, "group_id", null)
          offset_storage_topic = lookup(kafka_connect.value, "offset_storage_topic", null)
          status_storage_topic = lookup(kafka_connect.value, "status_storage_topic", null)
        }
      }
    }
  }

  dynamic "kafka_logs_user_config" {
    for_each = var.kafka_logs_user_config
    content {
      kafka_topic = lookup(kafka_logs_user_config.value, "kafka_topic", null)
    }
  }

  dynamic "kafka_mirrormaker_user_config" {
    for_each = var.kafka_mirrormaker_user_config
    content {
      cluster_alias = lookup(kafka_mirrormaker_user_config.value, "cluster_alias", null)
      dynamic "kafka_mirrormaker" {
        for_each = lookup(kafka_mirrormaker_user_config.value, "kafka_mirrormaker", [])
        content {
          consumer_fetch_min_bytes  = lookup(kafka_mirrormaker.value, "consumer_fetch_min_bytes", null)
          producer_batch_size       = lookup(kafka_mirrormaker.value, "producer_batch_size", null)
          producer_buffer_memory    = lookup(kafka_mirrormaker.value, "producer_buffer_memory", null)
          producer_linger_ms        = lookup(kafka_mirrormaker.value, "producer_linger_ms", null)
          producer_max_request_size = lookup(kafka_mirrormaker.value, "producer_max_request_size", null)
        }
      }
    }
  }

  dynamic "logs_user_config" {
    for_each = var.logs_user_config
    content {
      elasticsearch_index_days_max = lookup(logs_user_config.value, "elasticsearch_index_days_max", null)
      elasticsearch_index_prefix   = lookup(logs_user_config.value, "elasticsearch_index_prefix", null)
    }
  }

  dynamic "metrics_user_config" {
    for_each = var.metrics_user_config
    content {
      database       = lookup(metrics_user_config.value, "database", null)
      retention_days = lookup(metrics_user_config.value, "retention_days", null)
      ro_username    = lookup(metrics_user_config.value, "ro_username", null)
      username       = lookup(metrics_user_config.value, "username", null)
      dynamic "source_mysql" {
        for_each = lookup(metrics_user_config.value, "source_mysql", [])
        content {
          dynamic "telegraf" {
            for_each = lookup(source_mysql.value, "telegraf", [])
            content {
              gather_event_waits                       = lookup(telegraf.value, "gather_event_waits", null)
              gather_file_events_stats                 = lookup(telegraf.value, "gather_event_waits", null)
              gather_index_io_waits                    = lookup(telegraf.value, "gather_event_waits", null)
              gather_info_schema_auto_inc              = lookup(telegraf.value, "gather_event_waits", null)
              gather_innodb_metrics                    = lookup(telegraf.value, "gather_event_waits", null)
              gather_perf_events_statements            = lookup(telegraf.value, "gather_event_waits", null)
              gather_process_list                      = lookup(telegraf.value, "gather_event_waits", null)
              gather_slave_status                      = lookup(telegraf.value, "gather_event_waits", null)
              gather_table_io_waits                    = lookup(telegraf.value, "gather_event_waits", null)
              gather_table_lock_waits                  = lookup(telegraf.value, "gather_event_waits", null)
              gather_table_schema                      = lookup(telegraf.value, "gather_event_waits", null)
              perf_events_statements_digest_text_limit = lookup(telegraf.value, "gather_event_waits", null)
              perf_events_statements_limit             = lookup(telegraf.value, "gather_event_waits", null)
              perf_events_statements_time_limit        = lookup(telegraf.value, "gather_event_waits", null)
            }
          }
        }
      }
    }
  }
}