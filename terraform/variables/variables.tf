variable "random_string_length" {
  type    = number
  default = 5
}

variable "random_string_upper" {
  type    = bool
  default = false
}

variable "random_string_special" {
  type    = bool
  default = false
}

variable "null_resource_command" {
  type    = string
  default = "echo"
}

variable "project_id" {
  type    = string
  default = "gcp-project-id"
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "zone" {
  type    = string
  default = "us-central1-c"
}

variable "instance_name" {
  type    = string
  default = "test-instance"
}

variable "machine_type" {
  type    = string
  default = "e2-medium"
}

variable "service_account_id" {
  type    = string
  default = "test-sa"
}