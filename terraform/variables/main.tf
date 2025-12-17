# Creates a random string with a configurable length, and whether it should contain upper and special characters.
resource "random_string" "random" {
  length  = var.random_string_length
  upper   = var.random_string_upper
  special = var.random_string_special
}

# Creates a null resource that executes a configurable command with the random string as an argument.
resource "null_resource" "default" {
  provisioner "local-exec" {
    command = "${var.null_resource_command} ${random_string.random.result}"
  }
}

# Outputs the result of the random string.
output "test" {
  value = random_string.random.result
}