# This Terraform configuration creates a set of random strings and prints them to the console.

# The "strings" variable is a set of strings that will be used to create the random strings.
variable "strings" {
  default = [
    "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
    "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24",
  ]
  type = set(string)
}

# The "random_string" resource creates a random string for each item in the "strings" variable.
resource "random_string" "random" {
  for_each = { for i, s in var.strings : i => i }

  length  = 16
  upper   = false
  special = false
}

# The "null_resource" resource is used to print the random strings to the console.
resource "null_resource" "printer" {
  for_each = random_string.random

  # The "local-exec" provisioner runs a command on the local machine.
  provisioner "local-exec" {
    command = "echo ${each.value.result}; sleep 5"
  }

  depends_on = [random_string.random]
}

# The "sensitive" output variable will be redacted in the Terraform output.
output "sensitive" {
  value = [ for i, s in random_string.random : s.result ]
  sensitive =  true
}

# The "standard" output variable will be displayed in the Terraform output.
output "standard" {
  value = [ for i, s in random_string.random : s.result ]
  sensitive =  false
}