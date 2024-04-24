
# * Locals
locals {
  references = flatten([
    for stack in var.depends_on_stacks : [
      for ref in stack.references : {
        stack_id    = stack.depends_on_stack_id
        output_name = ref.output_name
        input_name  = ref.input_name
      }
    ]
  ])
}
