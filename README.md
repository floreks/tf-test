# tf-test

This repository contains infrastructure as code configurations using Ansible and Terraform.

## Directory Structure

### ansible/
- Contains Ansible playbooks and variable definitions.
- `basic/` - Basic Ansible playbook (`main.yaml`).
- `variables/` - Ansible variable definitions (`main.yaml`).

### terraform/
- Contains Terraform configurations for various infrastructure setups.
- `basic/` - Basic Terraform configuration (`main.tf`).
- `google-compute-instance/` - Terraform configuration for Google Compute Engine instances (`main.tf`).
- `long/` - Extended Terraform configuration (`main.tf`).
- `variables/` - Terraform variable definitions and main configuration (`main.tf`, `variables.tf`).

## Usage

### Ansible
- Use the playbooks in `ansible/basic` for basic tasks like pinging localhost and printing messages.
- Use the playbooks in `ansible/variables` to test variable usage in playbooks.

### Terraform
- Use the configurations in `terraform/basic` to generate random strings and run local commands.
- Use the `terraform/google-compute-instance` directory to provision Google Compute Engine instances with a service account.
- Use the `terraform/variables` directory for parameterized Terraform configurations using variables defined in `variables.tf`.

## Notes

- Ensure you have the necessary credentials and environment setup for Ansible and Terraform before running the configurations.
- For Google Cloud Terraform, ensure your credentials and project settings are properly configured.
