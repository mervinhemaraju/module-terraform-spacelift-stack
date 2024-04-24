# For a stack
resource "spacelift_azure_integration_attachment" "this" {
  count           = var.azure_integration_id == null ? 0 : 1
  integration_id  = var.azure_integration_id
  stack_id        = spacelift_stack.this.id
  write           = true
  read            = true
  subscription_id = var.azure_subscription_id
}
