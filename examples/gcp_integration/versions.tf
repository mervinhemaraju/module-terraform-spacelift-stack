terraform {
  required_version = ">= 1.4.0"

  required_providers {

    # Spacelift provider
    spacelift = {
      source  = "spacelift-io/spacelift"
      version = "~> 1"
    }
  }
}

# Spacelift provider configuration
provider "spacelift" {}
