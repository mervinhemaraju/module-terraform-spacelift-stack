terraform {
  required_version = ">= 1.4.0"

  required_providers {

    # Spacelift provider
    spacelift = {
      source  = "spacelift-io/spacelift"
      version = "1.8.0"
    }
  }
}

# Spacelift provider configuration
provider "spacelift" {}
