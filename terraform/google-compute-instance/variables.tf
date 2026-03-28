variable "project_id" {
  description = "The project ID to host the resources"
  type        = string
}

variable "region" {
  description = "The region to host the resources"
  type        = string
}

variable "zone" {
  description = "The zone to host the resources"
  type        = string
}

variable "instance_name" {
  description = "The name of the instance"
  type        = string
  default     = "test-instance"
}

variable "machine_type" {
  description = "The machine type of the instance"
  type        = string
  default     = "e2-medium"
}

variable "service_account_id" {
  description = "The service account ID"
  type        = string
}

variable "network_name" {
  description = "The name of the network"
  type        = string
  default     = "test-network"
}

variable "subnetwork_name" {
  description = "The name of the subnetwork"
  type        = string
  default     = "test-subnetwork"
}

variable "tags" {
  description = "The tags to apply to the instance"
  type        = list(string)
  default     = ["floreks", "infrastructure-stack", "test"]
}

variable "image" {
  description = "The image to use for the instance"
  type        = string
  default     = "debian-cloud/debian-11"
}
