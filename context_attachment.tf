resource "spacelift_context_attachment" "this" {
  count      = length(var.context_ids)
  context_id = var.context_ids[count.index]
  stack_id   = spacelift_stack.this.id
  priority   = 0
}
