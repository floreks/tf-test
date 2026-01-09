# This file defines the variables used in the Terraform configuration.

# The "random_string_length" variable controls the length of the random string.
variable "random_string_length" {
  type = number
  default = 5
}

# The "random_string_upper" variable controls whether the random string can contain uppercase letters.
variable "random_string_upper" {
  type = bool
  default = false
}

# The "random_string_special" variable controls whether the random string can contain special characters.
variable "random_string_special" {
  type = bool
  default = false
}

# The "null_resource_command" variable controls the command that is executed by the "null_resource".
variable "null_resource_command" {
  type = string
  default = "echo"
}