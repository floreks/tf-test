# Defines the length of the random string.
variable "random_string_length" {
  type = number
  default = 5
}

# Defines whether the random string should contain upper characters.
variable "random_string_upper" {
  type = bool
  default = false
}

# Defines whether the random string should contain special characters.
variable "random_string_special" {
  type = bool
  default = false
}

# Defines the command to be executed by the null resource.
variable "null_resource_command" {
  type = string
  default = "echo"
}