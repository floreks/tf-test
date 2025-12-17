# This resource generates a random string with configurable parameters.
resource "random_string" "random" {
  length  = var.random_string_length
  upper   = var.random_string_upper
  special = var.random_string_special
}

# This resource uses a provisioner to execute a configurable command on the local machine.
resource "null_resource" "default" {
  provisioner "local-exec" {
    command = "${var.null_resource_command} ${random_string.random.result}"
  }
}

# This output makes the result of the random_string resource available on the command line.
output "test" {
  value = random_string.random.result
}