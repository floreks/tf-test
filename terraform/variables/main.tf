// Terraform resources using variables
resource "random_string" "random" {
  length  = var.random_string_length
  upper   = var.random_string_upper
  special = var.random_string_special
}

resource "null_resource" "default" {
  # Removed local-exec command to prevent leakage
  # provisioner "local-exec" {
  #   command = "${var.null_resource_command} ${random_string.random.result}"
  # }
}

output "test" {
  value = random_string.random.result
}

// Note: Avoid including sensitive data in outputs without masking.
