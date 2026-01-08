# Length of the random string
variable "random_string_length" {
  type = number
  default = 5
}

# Whether to include uppercase letters
variable "random_string_upper" {
  type = bool
  default = false
}

# Whether to include special characters
variable "random_string_special" {
  type = bool
  default = false
}

# Command to execute in null_resource
variable "null_resource_command" {
  type = string
  default = "echo"
}