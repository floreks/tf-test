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
  length  = var.random_string_length
  upper   = var.random_string_upper
  special = var.random_string_special
}

resource "null_resource" "default" {
  provisioner "local-exec" {
    command = "${var.null_resource_command} ${random_string.random.result}"
  }
}

output "test" {
  value = random_string.random.result
}