resource "spacelift_stack_dependency" "this" {
  for_each = { for idx, elem in var.depends_on_stacks : idx => elem }

  stack_id            = spacelift_stack.this.id
  depends_on_stack_id = each.value.depends_on_stack_id
}

resource "spacelift_stack_dependency_reference" "this" {
  for_each = { for idx, elem in local.references : idx => elem }

  stack_dependency_id = spacelift_stack_dependency.this[each.value.stack_id].id
  output_name         = each.value.output_name
  input_name          = each.value.input_name
}
