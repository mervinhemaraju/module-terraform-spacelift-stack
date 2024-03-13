
resource "spacelift_stack" "this" {

  name        = var.stack_name == null ? var.stack_repository : var.stack_name
  branch      = var.branch
  description = var.description

  before_init = var.before_init

  repository = var.stack_repository

  terraform_version = var.terraform_version

  administrative = var.administrative
  autodeploy     = var.autodeploy
  autoretry      = var.autoretry

  project_root = var.project_root

  runner_image = var.runner_image

  terraform_smart_sanitization    = var.terraform_smart_sanitization
  terraform_external_state_access = var.terraform_external_state_access

  manage_state = var.manage_state

  labels = var.labels
}

resource "spacelift_environment_variable" "this" {
  for_each   = var.environment_variables
  name       = each.key
  value      = each.value
  write_only = true
  stack_id   = spacelift_stack.this.id
}

resource "spacelift_aws_integration_attachment" "this" {
  count          = var.aws_integration_id == null ? 0 : 1
  integration_id = var.aws_integration_id
  stack_id       = spacelift_stack.this.id
  read           = true
  write          = true
}
