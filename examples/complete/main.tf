module "integration_endpoint_external_aws_cloudwatch_metrics" {
  source        = "../../modules/integration_endpoint"
  project       = "tf-cloud-modules"
  endpoint_name = "aws_cloudwatch_metrics"
  endpoint_type = "external_aws_cloudwatch_metrics"
  external_aws_cloudwatch_metrics_user_config = [
    {
      access_key = "access_key"
      namespace  = "namespace"
      region     = "us-east-1"
      secret_key = "secret_key"
    }
  ]
}

module "redis" {
  source       = "tf-cloud-modules/redis/aiven"
  project      = "tf-cloud-modules"
  service_name = "test"
  tags = [
    {
      key   = "env"
      value = "test"
    }
  ]
}

module "integration" {
  source                  = "../.."
  project                 = "tf-cloud-modules"
  integration_type        = "external_aws_cloudwatch_metrics"
  destination_endpoint_id = module.integration_endpoint_external_aws_cloudwatch_metrics.id
  source_service_name     = module.redis.service_name
}