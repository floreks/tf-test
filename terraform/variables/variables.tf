# Input Variable Definitions

variable "random_string_length" {
  description = "The length of the random string to generate."
  type        = number
  default     = 5
}

variable "random_string_upper" {
  description = "Whether to include uppercase letters in the random string."
  type        = bool
  default     = false
}

variable "random_string_special" {
  description = "Whether to include special characters in the random string."
  type        = bool
  default     = false
}

variable "null_resource_command" {
  description = "The command to execute in the local-exec provisioner."
  type        = string
  default     = "echo"
}