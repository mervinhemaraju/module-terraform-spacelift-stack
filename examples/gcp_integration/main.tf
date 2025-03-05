
# * Basic Example * #

module "stack_gcp_integration" {
  source                 = "../../"
  stack_repository       = "mervinhemaraju"
  stack_name             = "mervinhemaraju_gcp_integration"
  description            = "A simple test stack with gcp integration"
  create_gcp_integration = true
}
