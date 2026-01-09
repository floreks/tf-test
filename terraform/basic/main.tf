# This resource generates a random string of length 5.
resource "random_string" "random" {
  length  = 5
  upper   = false
  special = false
}

# This resource uses the `local-exec` provisioner to execute a command on the local machine.
# It prints the result of the random string to the console.
resource "null_resource" "default" {
  provisioner "local-exec" {
    command = "echo ${random_string.random.result}"
  }
}

# This output displays the generated random string.
output "test" {
  value = random_string.random.result
}