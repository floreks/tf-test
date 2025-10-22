# tf-test

This repository contains infrastructure as code configurations using Ansible and Terraform.

## Directory Structure

### ansible/
- Contains Ansible playbooks and variable files.
- `basic/main.yaml`: Basic Ansible playbook.
- `variables/main.yaml`: Variable definitions for Ansible playbooks.

### terraform/
- Contains Terraform configurations for various infrastructure setups.
- `basic/main.tf`: Basic Terraform configuration.
- `google-compute-instance/main.tf`: Terraform configuration for Google Compute Engine instance.
- `long/main.tf`: Extended Terraform configuration.
- `variables/main.tf` and `variables/variables.tf`: Variable definitions for Terraform configurations.

This structure allows for modular and organized management of infrastructure provisioning and configuration automation.
