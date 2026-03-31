# Defines a set of strings.
variable "strings" {
  default = [
    "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
    "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24",
  ]
  type = set(string)
}

# Creates a random string for each string in the "strings" variable.
resource "random_string" "random" {
  for_each = { for i, s in var.strings : i => i }

  length  = 16
  upper   = false
  special = false
}

# Creates a null resource that prints each random string.
resource "null_resource" "printer" {
  for_each = random_string.random

  provisioner "local-exec" {
    command = "echo ${each.value.result}; sleep 5"
  }

  depends_on = [random_string.random]
}

# Outputs the random strings as a sensitive value.
output "sensitive" {
  value = [ for i, s in random_string.random : s.result ]
  sensitive =  true
}

# Outputs the random strings as a standard value.
output "standard" {
  value = [ for i, s in random_string.random : s.result ]
  sensitive =  false
}