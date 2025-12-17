# Variables Example Configuration
# Uses input variables to control the generation of a random string.

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
  description = "The generated random string result."
  value       = random_string.random.result
}