# This variable defines a set of strings that will be used to create random strings.
variable "strings" {
  default = [
    "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
    "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24",
  ]
  type = set(string)
}

# This resource creates multiple random strings, one for each string in the 'strings' variable.
resource "random_string" "random" {
  for_each = { for i, s in var.strings : i => i }

  length  = 16
  upper   = false
  special = false
}

# This resource creates multiple null_resources, one for each random string.
resource "null_resource" "printer" {
  for_each = random_string.random

  # This provisioner executes a command on the local machine for each resource.
  provisioner "local-exec" {
    # This command prints the random string and then sleeps for 5 seconds.
    command = "echo ${each.value.result}; sleep 5"
  }

  depends_on = [random_string.random]
}

# This output makes the list of random strings available, but marked as sensitive.
output "sensitive" {
  value = [ for i, s in random_string.random : s.result ]
  sensitive =  true
}

# This output makes the list of random strings available, not marked as sensitive.
output "standard" {
  value = [ for i, s in random_string.random : s.result ]
  sensitive =  false
}