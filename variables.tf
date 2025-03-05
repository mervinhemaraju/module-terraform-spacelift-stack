
variable "description" {
  type        = string
  description = "The description of the spacelift stack"
}

variable "stack_repository" {
  type        = string
  description = "The repository to deploy"
}

variable "branch" {
  type        = string
  description = "The branch to deploy"
  default     = "main"
}

variable "context_ids" {
  type        = list(string)
  description = "The context ids to attach to the stack"
  default     = []
}

variable "project_root" {
  type        = string
  description = "The project root folder path"
  default     = null
}

variable "stack_name" {
  type        = string
  description = "The name of the spacelift stack"
  default     = null
}

variable "before_init" {
  type        = list(string)
  description = "The command to run before init"
  default     = []
}

variable "terraform_version" {
  type        = string
  description = "The version of terraform to use"
  default     = "1.8.7"
}

variable "administrative" {
  type        = bool
  description = "Whether the stack is administrative"
  default     = false
}

variable "autodeploy" {
  type        = bool
  description = "Whether the stack should autodeploy"
  default     = false
}

variable "autoretry" {
  type        = bool
  description = "Whether the stack should autoretry"
  default     = false
}

variable "runner_image" {
  type        = string
  description = "The runner image to use"
  default     = "ghcr.io/mervinhemaraju/spacelift-runner-image:prod"
}

variable "terraform_smart_sanitization" {
  type        = bool
  description = "Whether to use smart sanitization"
  default     = true
}

variable "terraform_external_state_access" {
  type        = bool
  description = "Whether to allow external state access"
  default     = false
}

variable "manage_state" {
  type        = bool
  description = "Whether to manage state"
  default     = false
}

variable "labels" {
  type        = list(string)
  description = "The labels to apply to the stack"
  default     = []
}

variable "environment_variables" {
  type        = map(string)
  description = "The environment variables to set"
  default     = {}
}

variable "aws_integration_id" {
  type        = string
  description = "The id of the aws integration"
  default     = null
}

variable "azure_integration_id" {
  type        = string
  description = "The id of the azure integration"
  default     = null
}

variable "azure_subscription_id" {
  type        = string
  description = "The id of the azure subscription"
  default     = null
}

variable "terraform_workflow_tool" {
  type        = string
  description = "The terraform workflow tool to use."
  default     = "OPEN_TOFU"
}

variable "terraform_workspace" {
  type        = string
  description = "The terraform workspace to use."
  default     = "production"

}

# Add these variables to your module's variables.tf file
variable "dependencies" {
  description = "List of stack dependencies"
  type = list(object({
    depends_on_stack_id = string
  }))
  default = []
}

variable "dependency_references" {
  description = "List of stack dependency references"
  type = list(object({
    dependency_index = number
    output_name      = string
    input_name       = string
  }))
  default = []
}

variable "create_gcp_integration" {
  description = "Whether to create a GCP integration"
  type        = bool
  default     = false
}
