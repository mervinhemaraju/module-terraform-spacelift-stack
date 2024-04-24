
resource "spacelift_stack_dependency" "dependency" {
  count = length(var.depends_on_stacks)

  stack_id            = spacelift_stack.this.id
  depends_on_stack_id = var.dependencies[count.index].depends_on_stack_id
}
