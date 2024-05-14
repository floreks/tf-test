variable "strings" {
  default = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  type = set(string)
}

resource "random_string" "random" {
  for_each = { for s in var.strings : s => s }

  length  = 16
  upper   = false
  special = false
}

resource "null_resource" "printer" {
  for_each = random_string.random

  provisioner "local-exec" {
    command = "echo ${each.value.result}; asd"
  }

  depends_on = [random_string.random]
}

output "sensitive" {
  value = [ for i, s in random_string.random : s ]
  sensitive =  true
}

output "standard" {
  value = [ for i, s in random_string.random : s ]
  sensitive =  false
}