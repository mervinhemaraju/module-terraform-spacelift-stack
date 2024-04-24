# resource "spacelift_stack_dependency" "this" {
#   for_each = { for idx, elem in var.depends_on_stacks : idx => elem }

#   stack_id            = spacelift_stack.this.id
#   depends_on_stack_id = each.value.depends_on_stack_id
# }

# resource "spacelift_stack_dependency_reference" "this" {
#   for_each = { for idx, elem in local.references : idx => elem }

#   stack_dependency_id = spacelift_stack_dependency.this[each.value.stack_id].id
#   output_name         = each.value.output_name
#   input_name          = each.value.input_name
# }

# resource "spacelift_stack_dependency_reference" "this" {
#   for_each = { for elem in local.references : elem.stack_id => elem }

#   stack_dependency_id = spacelift_stack_dependency.this[each.value.stack_id].id
#   output_name         = each.value.output_name
#   input_name          = each.value.input_name
# }

resource "spacelift_stack_dependency" "this" {
  for_each = { for index, stack in var.depends_on_stacks : stack.depends_on_stack_id => stack }

  stack_id            = spacelift_stack.this.id
  depends_on_stack_id = each.key
}

# resource "spacelift_stack_dependency_reference" "this" {
#   for_each = { for stack_id, stack in spacelift_stack_dependency.this : stack_id => stack.references }

#   stack_dependency_id = spacelift_stack_dependency.this[each.key].id
#   output_name         = each.value.output_name
#   input_name          = each.value.input_name
# }
