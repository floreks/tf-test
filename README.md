# tf-test

This repository contains infrastructure as code configurations using Ansible and Terraform.

## Directory Structure

- `ansible/`
  - `basic/`: Contains basic Ansible playbook (main.yaml).
  - `variables/`: Contains Ansible playbook with variable definitions (main.yaml).

- `terraform/`
  - `basic/`: Basic Terraform configuration (main.tf).
  - `google-compute-instance/`: Terraform configuration for Google Compute Instance (main.tf).
  - `long/`: Extended Terraform configuration (main.tf).
  - `variables/`: Terraform variable definitions and main configuration (main.tf, variables.tf).

## Usage

- Use the Ansible playbooks in the `ansible` directory to automate configuration management.
  - `basic/main.yaml`: Simple playbook to ping localhost and print a message.
  - `variables/main.yaml`: Playbook demonstrating use of variables in messages.

- Use the Terraform configurations in the `terraform` directory to provision and manage cloud infrastructure.
  - `basic/main.tf`: Creates a random string and echoes it using a null resource.
  - `google-compute-instance/main.tf`: Provisions a Google Compute Instance with a custom service account and startup script.
  - `variables/variables.tf`: Defines variables used in Terraform configurations.

## Notes

- Each subdirectory contains relevant configuration files for its purpose.
- Review each playbook or Terraform file for specific resource details and customization options.
