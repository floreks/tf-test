variable "random_string_length" {
  type = number
  default = 5
  description = "Length of the random string"
}

variable "random_string_upper" {
  type = bool
  default = false
  description = "Whether to include uppercase letters"
}

variable "random_string_special" {
  type = bool
  default = false
  description = "Whether to include special characters"
}

variable "null_resource_command" {
  type = string
  default = "echo"
  description = "Command to execute with the random string"
}