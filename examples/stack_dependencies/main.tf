
# * Basic Example * #

module "stack_1" {
  source           = "../../"
  stack_repository = "mervinhemaraju"
  stack_name       = "stackone"
  description      = "A simple test stack"

  environment_variables = {
    test1 : "value1",
    test2 : "value2"
  }
}


module "stack_2" {
  source           = "../../"
  stack_repository = "portfolio"
  stack_name       = "stacktwo"
  description      = "A simple test stack"

  depends_on_stacks = [
    {
      depends_on_stack_id = module.stack_1.stack_id
      references = [
        {
          output_name = "test1",
          input_name  = "TF_VAR_test1"
        }
      ]
    }
  ]
}
