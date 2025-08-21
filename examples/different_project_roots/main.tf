

# * Stack with different project roots * #
module "stack_with_different_project_roots" {
  source           = "../../"
  stack_repository = "mervinhemaraju"
  stack_name       = "mervinhemaraju_different_project_roots"
  description      = "A simple test stack with different project roots"

  project_root = "folder1/subfolder"

  additional_project_globs = [
    "folder2/subfolder",
    "folder3"
  ]
}
