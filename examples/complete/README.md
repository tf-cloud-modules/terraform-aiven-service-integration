# Complete Aiven Service Integration Example

Configuration in this directory creates an Aiven Integration resources with following features:

- Aiven Integration Endpoint (AWS CloudWatch Metrics)
- Aiven Redis Cluster
- Aiven Intergration

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_integration"></a> [integration](#module\_integration) | ../.. | n/a |
| <a name="module_integration_endpoint_external_aws_cloudwatch_metrics"></a> [integration\_endpoint\_external\_aws\_cloudwatch\_metrics](#module\_integration\_endpoint\_external\_aws\_cloudwatch\_metrics) | ../../modules/integration_endpoint | n/a |
| <a name="module_redis"></a> [redis](#module\_redis) | tf-cloud-modules/redis/aiven | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->