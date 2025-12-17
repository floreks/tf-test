# This resource generates a random string.
resource "random_string" "random" {
  length  = 5
  upper   = false
  special = false
}

# This resource uses a provisioner to execute a command on the local machine.
resource "null_resource" "default" {
  provisioner "local-exec" {
    # This command prints the result of the random_string resource.
    command = "echo ${random_string.random.result}"
  }
}

# This output makes the result of the random_string resource available on the command line.
output "test" {
  value = random_string.random.result
}