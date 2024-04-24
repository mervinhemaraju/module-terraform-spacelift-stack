variable "depends_on_stacks" {
  description = "List of maps containing stack dependencies and references"
  type        = list(any)
  default = [
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
