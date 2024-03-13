

resource "spacelift_context" "one" {
  description = "test1"
  name        = "test1"
}

resource "spacelift_context" "two" {
  description = "test2"
  name        = "test2"
}

# * Basic Example * #

module "stack_with_contexts" {
  source           = "../../"
  stack_repository = "mervinhemaraju"
  description      = "A simple test stack"
  contexts = [
    spacelift_context.one.id,
    spacelift_context.two.id,
  ]
}
