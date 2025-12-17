# This resource generates a random string using input variables.
resource "random_string" "random" {
  length  = var.random_string_length
  upper   = var.random_string_upper
  special = var.random_string_special
}

# This resource prints the generated random string.
resource "null_resource" "default" {
  provisioner "local-exec" {
    command = "${var.null_resource_command} ${random_string.random.result}"
  }
}

# This output displays the generated random string.
output "test" {
  value = random_string.random.result
}