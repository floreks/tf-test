variable "random_string_length" {
  type = number
  default = 5
}

variable "random_string_upper" {
  type = bool
  default = false
}

variable "random_string_special" {
  type = bool
  default = false
}

variable "null_resource_command" {
  type = string
  default = "echo"
}
