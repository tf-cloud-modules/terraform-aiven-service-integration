# Aiven Service Integration Endpoint Terraform module

Terraform module which creates Aiven Service Integration Endpoint resources

## Usage

```hcl
module "integration_endpoint" {
  source                  = "tf-cloud-modules/service-integration/aiven//modules/integration_endpoint"
  project                 = "test"
  endpoint_name           = "aws_cloudwatch_metrics"
  endpoint_type           = "external_aws_cloudwatch_metrics"
  
  external_aws_cloudwatch_metrics_user_config = [
    {
      access_key = "access_key"
      namespace  = "namespace"
      region     = "us-east-1"
      secret_key = "secret_key"
    }
  ]
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aiven"></a> [aiven](#requirement\_aiven) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aiven"></a> [aiven](#provider\_aiven) | >= 3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aiven_service_integration_endpoint.this](https://registry.terraform.io/providers/aiven/aiven/latest/docs/resources/service_integration_endpoint) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_datadog_user_config"></a> [datadog\_user\_config](#input\_datadog\_user\_config) | Datadog specific user configurable settings. | `list(any)` | `[]` | no |
| <a name="input_endpoint_name"></a> [endpoint\_name](#input\_endpoint\_name) | Name of the service integration endpoint. | `string` | n/a | yes |
| <a name="input_endpoint_type"></a> [endpoint\_type](#input\_endpoint\_type) | Type of the service integration endpoint. | `string` | n/a | yes |
| <a name="input_external_aws_cloudwatch_logs_user_config"></a> [external\_aws\_cloudwatch\_logs\_user\_config](#input\_external\_aws\_cloudwatch\_logs\_user\_config) | External AWS CloudWatch Logs specific user configurable settings. | `list(any)` | `[]` | no |
| <a name="input_external_aws_cloudwatch_metrics_user_config"></a> [external\_aws\_cloudwatch\_metrics\_user\_config](#input\_external\_aws\_cloudwatch\_metrics\_user\_config) | External AWS cloudwatch mertrics specific user configurable settings. | `list(any)` | `[]` | no |
| <a name="input_external_elasticsearch_logs_user_config"></a> [external\_elasticsearch\_logs\_user\_config](#input\_external\_elasticsearch\_logs\_user\_config) | External Elasticsearch specific user configurable settings. | `list(any)` | `[]` | no |
| <a name="input_external_google_cloud_logging_user_config"></a> [external\_google\_cloud\_logging\_user\_config](#input\_external\_google\_cloud\_logging\_user\_config) | External Google Cloud Logginig specific user configurable settings. | `list(any)` | `[]` | no |
| <a name="input_external_kafka_user_config"></a> [external\_kafka\_user\_config](#input\_external\_kafka\_user\_config) | External Kafka specific user configurable settings. | `list(any)` | `[]` | no |
| <a name="input_external_schema_registry_user_config"></a> [external\_schema\_registry\_user\_config](#input\_external\_schema\_registry\_user\_config) | External schema registry specific user configurable settings. | `list(any)` | `[]` | no |
| <a name="input_jolokia_user_config"></a> [jolokia\_user\_config](#input\_jolokia\_user\_config) | Jolokia specific user configurable settings. | `list(any)` | `[]` | no |
| <a name="input_project"></a> [project](#input\_project) | Aiven Cloud Project Name. | `string` | n/a | yes |
| <a name="input_prometheus_user_config"></a> [prometheus\_user\_config](#input\_prometheus\_user\_config) | Prometheus specific user configurable settings. | `list(any)` | `[]` | no |
| <a name="input_rsyslog_user_config"></a> [rsyslog\_user\_config](#input\_rsyslog\_user\_config) | Rsyslog specific user configurable settings. | `list(any)` | `[]` | no |
| <a name="input_signalfx_user_config"></a> [signalfx\_user\_config](#input\_signalfx\_user\_config) | Signalfx specific user configurable settings. | `list(any)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource. |
| <a name="output_project"></a> [project](#output\_project) | Aiven Cloud Project Name. |
<!-- END_TF_DOCS -->