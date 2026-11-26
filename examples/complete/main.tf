module "integration_endpoint_external_aws_cloudwatch_metrics" {
  source        = "../../modules/integration_endpoint"
  project       = var.project
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

module "mysql" {
  source  = "tf-cloud-modules/mysql/aiven"
  version = "2.1.0"

  project      = var.project
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
  project                 = var.project
  integration_type        = "external_aws_cloudwatch_metrics"
  destination_endpoint_id = module.integration_endpoint_external_aws_cloudwatch_metrics.id
  source_service_name     = module.mysql.service_name
}
