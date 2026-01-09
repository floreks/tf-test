# Variable to control the length of the random string
variable "random_string_length" {
  type = number
  default = 5
}

# Variable to determine if uppercase letters are included
variable "random_string_upper" {
  type = bool
  default = false
}

# Variable to determine if special characters are included
variable "random_string_special" {
  type = bool
  default = false
}

# Variable for the command to execute
variable "null_resource_command" {
  type = string
  default = "echo"
}