output "stack_id" {
  value = spacelift_stack.this.id
}

output "dependency_ids" {
  value = spacelift_stack_dependency.dependencies[*].id
}
