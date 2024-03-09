terraform {
  required_version = ">= 1.4.0"

  required_providers {
    aws = {
      source  = "spacelift-io/spacelift"
      version = "1.8.0"
    }
  }
}
