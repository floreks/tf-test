# Generate a random string using properties defined in variables
resource "random_string" "random" {
  length  = var.random_string_length
  upper   = var.random_string_upper
  special = var.random_string_special
}

# Execute a command defined in a variable, passing the random string as an argument
resource "null_resource" "default" {
  provisioner "local-exec" {
    command = "${var.null_resource_command} ${random_string.random.result}"
  }
}

# Output the generated random string
output "test" {
  value = random_string.random.result
}