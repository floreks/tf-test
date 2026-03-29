# Basic Terraform Configuration
# Generates a random string and echoes it using a local-exec provisioner.

resource "random_string" "random" {
  length  = 5
  upper   = false
  special = false
}

resource "null_resource" "default" {
  # The local-exec provisioner executes a local command after the resource is created.
  provisioner "local-exec" {
    command = "echo ${random_string.random.result}"
  }
}

output "test" {
  description = "The generated random string."
  value       = random_string.random.result
}