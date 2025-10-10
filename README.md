# tf-test

This repository contains infrastructure-as-code examples and playbooks using Ansible and Terraform.

## Directory Structure

### ansible/
- Contains Ansible playbooks and variable definitions.
- `basic/main.yaml`: Simple Ansible playbook that pings localhost and prints a message.
- `variables/main.yaml`: Ansible playbook that uses variables to ping localhost and print messages.

### terraform/
- Contains multiple Terraform setups demonstrating resource creation and provisioning.
- `basic/main.tf`: Generates a random string and prints it using a null resource.
- `google-compute-instance/main.tf`: Example configuration for creating a Google Cloud Compute Engine instance with service account and metadata.
- `long/main.tf`: Creates multiple random strings with provisioners demonstrating more complex Terraform resource management.
- `variables/`: Contains variable definitions and usage for the Terraform configurations.

## Purpose

These examples can be used as a starting point for learning or building automation for infrastructure deployment using Ansible and Terraform.

Feel free to explore each directory for more details on their usage and modify them for your needs.
