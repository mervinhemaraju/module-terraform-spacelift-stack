
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
  default     = "1.4.0"
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
  default     = true
}

variable "manage_state" {
  type        = bool
  description = "Whether to manage state"
  default     = true
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
