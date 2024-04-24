output "sd" {
  value = { for index, stack in var.depends_on_stacks : stack.depends_on_stack_id => stack }
}

# output "sdr" {
#   value = { for stack_id, stack in spacelift_stack_dependency.this : stack_id => stack.references }
# }
