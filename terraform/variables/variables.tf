# This variable defines the length of the random string.
variable "random_string_length" {
  type = number
  default = 5
}

# This variable controls whether the random string should contain uppercase letters.
variable "random_string_upper" {
  type = bool
  default = false
}

# This variable controls whether the random string should contain special characters.
variable "random_string_special" {
  type = bool
  default = false
}

# This variable defines the command to be executed by the null_resource.
variable "null_resource_command" {
  type = string
  default = "echo"
}