
# resource "spacelift_stack_dependency" "this" {
#   count = length(var.depends_on_stacks)

#   stack_id            = spacelift_stack.this.id
#   depends_on_stack_id = var.depends_on_stacks[count.index].depends_on_stack_id
# }


locals {
  flattened_references = flatten([
    for stack in var.depends_on_stacks : [
      for reference in stack.references : {
        depends_on_stack_id = stack.depends_on_stack_id
        output_name         = reference.output_name
        input_name          = reference.input_name
      }
    ]
  ])
}

resource "spacelift_stack_dependency" "this" {
  for_each = { for stack in var.depends_on_stacks : stack.depends_on_stack_id => stack }

  stack_id            = spacelift_stack.this.id
  depends_on_stack_id = each.value.depends_on_stack_id
}
