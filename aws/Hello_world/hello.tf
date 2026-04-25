# Terraform configuration block
terraform {
  required_providers {
    # Null provider for local execution
    null = {
      source  = "hashicorp/null"
      version = "3.2.4"
    }
  }
}

# Null provider configuration
provider "null" {
  # Configuration options
}

# Local execution resource to print Hello World
resource "null_resource" "hello" {
  provisioner "local-exec" {
    command = "echo Hello World"
  }
}