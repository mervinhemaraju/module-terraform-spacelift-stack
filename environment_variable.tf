resource "spacelift_environment_variable" "this" {
  for_each   = var.environment_variables
  name       = each.key
  value      = each.value
  write_only = true
  stack_id   = spacelift_stack.this.id
}
