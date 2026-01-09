# This Terraform configuration creates a random string and prints it to the console, using variables to customize the behavior.

# The "random_string" resource generates a random string.
# The length, upper, and special characters are all controlled by variables.
resource "random_string" "random" {
  length  = var.random_string_length
  upper   = var.random_string_upper
  special = var.random_string_special
}

# The "null_resource" resource is used to execute a command.
# The command is controlled by the "null_resource_command" variable.
resource "null_resource" "default" {
  provisioner "local-exec" {
    command = "${var.null_resource_command} ${random_string.random.result}"
  }
}

# The "output" block defines an output variable that can be easily queried from the command line.
output "test" {
  value = random_string.random.result
}