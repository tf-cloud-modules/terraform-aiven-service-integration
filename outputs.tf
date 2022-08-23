output "id" {
  description = "The ID of this resource."
  value       = try(aiven_service_integration.this[0].id, "")
}

output "project" {
  description = "Aiven Cloud Project Name."
  value       = try(aiven_service_integration.this[0].project, "")
}