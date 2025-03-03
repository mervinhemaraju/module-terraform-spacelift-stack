# Create the stack dependencies
resource "spacelift_stack_dependency" "this" {
  for_each = var.stack_dependencies

  stack_id            = spacelift_stack.this.id
  depends_on_stack_id = each.value
}

# Create the dependency references
resource "spacelift_stack_dependency_reference" "this" {
  for_each = { for idx, ref in var.dependency_references : idx => ref }

  stack_dependency_id = each.value.stack_dependency_id
  output_name         = each.value.output_name
  input_name          = each.value.input_name
}
