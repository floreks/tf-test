# Creates a random string of length 5.
resource "random_string" "random" {
  length  = 5
  upper   = false
  special = false
}

# Creates a null resource that executes a local command.
# The command echoes the result of the random string.
resource "null_resource" "default" {
  provisioner "local-exec" {
    command = "echo ${random_string.random.result}"
  }
}

# Outputs the result of the random string.
output "test" {
  value = random_string.random.result
}