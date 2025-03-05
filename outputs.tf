output "stack_id" {
  value = spacelift_stack.this.id
}

output "dependency_ids" {
  value = spacelift_stack_dependency.dependencies[*].id
}

output "gcp_sa_email" {
  value = spacelift_gcp_service_account.this[*].service_account_email
}
