# Variable defining a set of strings to process
variable "strings" {
  default = [
    "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
    "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24",
  ]
  type = set(string)
}

# Generate a random string for each item in the variable set
resource "random_string" "random" {
  for_each = { for i, s in var.strings : i => i }

  length  = 16
  upper   = false
  special = false
}

# Execute a command for each generated string, including a sleep to simulate duration
resource "null_resource" "printer" {
  for_each = random_string.random

  provisioner "local-exec" {
    command = "echo ${each.value.result}; sleep 5"
  }

  depends_on = [random_string.random]
}

# Output the results as sensitive data (hidden in CLI output)
output "sensitive" {
  value = [ for i, s in random_string.random : s.result ]
  sensitive =  true
}

# Output the results as standard data (visible in CLI output)
output "standard" {
  value = [ for i, s in random_string.random : s.result ]
  sensitive =  false
}