
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
