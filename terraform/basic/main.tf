terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

resource "random_string" "random" {
  length  = 5
  upper   = false
  special = false
}

# The use of local-exec is generally discouraged for resource management.
# This is included as a basic example only.
resource "null_resource" "default" {
  provisioner "local-exec" {
    command = "echo ${random_string.random.result}"
  }
}

output "test" {
  value = random_string.random.result
}