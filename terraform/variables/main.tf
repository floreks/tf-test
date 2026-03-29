# Create a random string using input variables for configuration
resource "random_string" "random" {
  length  = var.random_string_length
  upper   = var.random_string_upper
  special = var.random_string_special
}

# Execute a command using the 'null_resource_command' variable and the generated string
resource "null_resource" "default" {
  provisioner "local-exec" {
    command = "${var.null_resource_command} ${random_string.random.result}"
  }
}

# Output the generated random string
output "test" {
  value = random_string.random.result
}