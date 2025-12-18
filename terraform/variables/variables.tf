# Length of the random string to generate
variable "random_string_length" {
  type = number
  default = 5
}

# Whether to include uppercase letters in the random string
variable "random_string_upper" {
  type = bool
  default = false
}

# Whether to include special characters in the random string
variable "random_string_special" {
  type = bool
  default = false
}

# Command to execute in the null_resource provisioner
variable "null_resource_command" {
  type = string
  default = "echo"
}