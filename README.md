# Aiven Service Integration Terraform module

Terraform module which creates Aiven Service Integration resources

## Usage

```hcl
module "integration" {
  source                  = "tf-cloud-modules/service-integration/aiven"
  project                 = "test"
  integration_type        = "external_aws_cloudwatch_metrics"
  destination_endpoint_id = "XXXXXXX"
  source_service_name     = "test"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aiven"></a> [aiven](#requirement\_aiven) | >= 3.0.0, < 4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aiven"></a> [aiven](#provider\_aiven) | 3.5.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aiven_service_integration.this](https://registry.terraform.io/providers/aiven/aiven/latest/docs/resources/service_integration) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_destination_endpoint_id"></a> [destination\_endpoint\_id](#input\_destination\_endpoint\_id) | Destination endpoint for the integration. | `string` | n/a | yes |
| <a name="input_destination_service_name"></a> [destination\_service\_name](#input\_destination\_service\_name) | Destination service for the integration. | `string` | `""` | no |
| <a name="input_integration_type"></a> [integration\_type](#input\_integration\_type) | Type of the service integration. | `string` | n/a | yes |
| <a name="input_kafka_connect_user_config"></a> [kafka\_connect\_user\_config](#input\_kafka\_connect\_user\_config) | Kafka Connect specific user configurable settings. | `list(any)` | `[]` | no |
| <a name="input_kafka_logs_user_config"></a> [kafka\_logs\_user\_config](#input\_kafka\_logs\_user\_config) | Kafka Logs specific user configurable settings. | `list(any)` | `[]` | no |
| <a name="input_kafka_mirrormaker_user_config"></a> [kafka\_mirrormaker\_user\_config](#input\_kafka\_mirrormaker\_user\_config) | Mirrormaker 2 integration specific user configurable settings. | `list(any)` | `[]` | no |
| <a name="input_logs_user_config"></a> [logs\_user\_config](#input\_logs\_user\_config) | Log integration specific user configurable settings. | `list(any)` | `[]` | no |
| <a name="input_metrics_user_config"></a> [metrics\_user\_config](#input\_metrics\_user\_config) | Metrics specific user configurable settings. | `list(any)` | `[]` | no |
| <a name="input_mirrormaker_user_config"></a> [mirrormaker\_user\_config](#input\_mirrormaker\_user\_config) | Mirrormaker 1 integration specific user configurable settings. | `list(any)` | `[]` | no |
| <a name="input_project"></a> [project](#input\_project) | Aiven Cloud Project Name | `string` | n/a | yes |
| <a name="input_source_service_name"></a> [source\_service\_name](#input\_source\_service\_name) | Source service for the integration. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource. |
| <a name="output_project"></a> [project](#output\_project) | Aiven Cloud Project Name. |
<!-- END_TF_DOCS -->