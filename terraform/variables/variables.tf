variable "random_string_length" {
  type = number
  default = 5
  description = "The length of the random string to generate."
}

variable "random_string_upper" {
  type = bool
  default = false
  description = "Whether to include uppercase letters in the random string."
}

variable "random_string_special" {
  type = bool
  default = false
  description = "Whether to include special characters in the random string."
}

variable "null_resource_command" {
  type = string
  default = "echo"
  description = "The command to execute in the local-exec provisioner."
}