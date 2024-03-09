
# * Basic Example * #

module "stack_env_var" {
  source           = "../../"
  stack_repository = "simple-env-var"
  description      = "A simple test stack"

  environment_variables = {
    test1 : "value1",
    test2 : "value2"
  }
}
