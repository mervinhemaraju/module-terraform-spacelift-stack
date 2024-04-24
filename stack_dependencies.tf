resource "spacelift_stack_dependency" "this" {
  for_each = { for idx, elem in var.depends_on_stacks : idx => elem }

  stack_id            = spacelift_stack.this.id
  depends_on_stack_id = each.value.depends_on_stack_id

  dynamic "resource" {
    for_each = each.value.references
    content {
      resource "spacelift_stack_dependency_reference" "public_ip_web_01" {
        stack_dependency_id = spacelift_stack_dependency.this[each.key].id
        output_name         = resource.value.output_name
        input_name          = resource.value.input_name
      }
    }
  }
}
