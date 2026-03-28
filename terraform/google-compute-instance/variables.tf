variable "project_id" {
  description = "The project ID to host the resources"
  type        = string
}

variable "region" {
  description = "The region to host the resources"
  type        = string
}

variable "service_account_id" {
  description = "The service account ID"
  type        = string
}

variable "instance_name" {
  description = "The name of the instance"
  type        = string
}

variable "machine_type" {
  description = "The machine type of the instance"
  type        = string
  default     = "e2-medium"
}

variable "zone" {
  description = "The zone to host the instance"
  type        = string
}

variable "tags" {
  description = "The tags to apply to the instance"
  type        = list(string)
  default     = ["floreks", "infrastructure-stack", "test"]
}

variable "network" {
  description = "The network to attach the instance to"
  type        = string
  default     = "default"
}
