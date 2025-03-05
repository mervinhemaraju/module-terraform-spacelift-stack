output "stack_id_gcp_integration" {
  value = module.stack_gcp_integration.stack_id
}

output "sa_email_gcp_integration" {
  value = module.stack_gcp_integration.gcp_sa_email
}
