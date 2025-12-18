variable "project_id" {
  description = "The project ID to deploy to."
  type        = string
}

variable "region" {
  description = "The region to deploy to."
  type        = string
}

variable "service_account_id" {
  description = "The service account ID to create."
  type        = string
}

variable "instance_name" {
  description = "The name of the compute instance."
  type        = string
}

variable "machine_type" {
  description = "The machine type of the compute instance."
  type        = string
  default     = "e2-medium"
}

variable "zone" {
  description = "The zone to deploy to."
  type        = string
}

variable "tags" {
  description = "A list of tags to apply to the instance."
  type        = list(string)
  default     = ["floreks", "infrastructure-stack", "test"]
}

variable "boot_disk_image" {
  description = "The image to use for the boot disk."
  type        = string
  default     = "debian-cloud/debian-11"
}

variable "network" {
  description = "The network to attach the instance to."
  type        = string
  default     = "default"
}

variable "metadata" {
  description = "A map of metadata to apply to the instance."
  type        = map(string)
  default     = {
    owner      = "floreks"
    managed-by = "plural"
  }
}

variable "metadata_startup_script" {
  description = "The startup script to run on the instance."
  type        = string
  default     = "echo hi > /test.txt"
}
