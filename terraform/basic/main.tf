# Generate a random string of length 5
resource "random_string" "random" {
  length  = 5
  upper   = false
  special = false
}

# Echo the generated random string using a local-exec provisioner
resource "null_resource" "default" {
  provisioner "local-exec" {
    command = "echo ${random_string.random.result}"
  }
}

# Output the generated random string
output "test" {
  value = random_string.random.result
}