# This Terraform configuration creates a random string and prints it to the console.

# The "random_string" resource generates a random string of a specified length.
resource "random_string" "random" {
  length  = 5
  upper   = false
  special = false
}

# The "null_resource" resource is a placeholder for running provisioners.
# In this case, it uses the "local-exec" provisioner to execute a command on the local machine.
resource "null_resource" "default" {
  provisioner "local-exec" {
    # The command echoes the result of the random string to the console.
    command = "echo ${random_string.random.result}"
  }
}

# The "output" block defines an output variable that can be easily queried from the command line.
output "test" {
  value = random_string.random.result
}