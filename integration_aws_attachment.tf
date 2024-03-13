resource "spacelift_aws_integration_attachment" "this" {
  count          = var.aws_integration_id == null ? 0 : 1
  integration_id = var.aws_integration_id
  stack_id       = spacelift_stack.this.id
  read           = true
  write          = true
}
