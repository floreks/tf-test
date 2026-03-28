terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

variable "strings" {
  default = toset([
    "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
    "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24",
  ])
  type = set(string)
}

resource "random_string" "random" {
  for_each = var.strings

  length  = 16
  upper   = false
  special = false
}

resource "null_resource" "printer" {
  for_each = random_string.random

  provisioner "local-exec" {
    command = "echo ${each.value.result}"
  }
}

output "sensitive" {
  value     = [for s in random_string.random : s.result]
  sensitive = true
}

output "standard" {
  value     = [for s in random_string.random : s.result]
  sensitive = false
}