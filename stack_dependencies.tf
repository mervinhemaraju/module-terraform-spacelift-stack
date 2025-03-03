# Create stack dependencies dynamically
resource "spacelift_stack_dependency" "dependencies" {
  count               = length(var.dependencies)
  stack_id            = spacelift_stack.this.id
  depends_on_stack_id = var.dependencies[count.index].depends_on_stack_id
}

# Create dependency references dynamically
resource "spacelift_stack_dependency_reference" "references" {
  count               = length(var.dependency_references)
  stack_dependency_id = spacelift_stack_dependency.dependencies[var.dependency_references[count.index].dependency_index].id
  output_name         = var.dependency_references[count.index].output_name
  input_name          = var.dependency_references[count.index].input_name
}
