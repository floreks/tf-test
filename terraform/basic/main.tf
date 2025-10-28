resource "random_string" "random" {
  length  = 5
  upper   = false
  special = false
}

resource "null_resource" "default" {
  # Removed insecure echo command that may leak info
  # provisioner "local-exec" {
  #   command = "echo ${random_string.random.result}"
  # }
}

output "test" {
  value = random_string.random.result
}
