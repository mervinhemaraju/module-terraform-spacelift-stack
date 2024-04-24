
# * Basic Example * #

module "stack_1" {
  source           = "../../"
  stack_repository = "mervinhemaraju"
  stack_name       = "test_stack_1"
  description      = "A simple test stack"

  environment_variables = {
    test1 : "value1",
    test2 : "value2"
  }
}


module "stack_2" {
  source           = "../../"
  stack_repository = "mervinhemaraju"
  stack_name       = "test_stack_2"
  description      = "A simple test stack"

  depends_on_stacks = [
    {
      depends_on_stack_id = module.stack_1.id
      references = [
        {
          output_name = "test1",
          input_name  = "TF_VAR_test1"
        }
      ]
    }
  ]
}
