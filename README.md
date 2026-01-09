# tf-test

This repository contains automation scripts and infrastructure-as-code configurations for various deployment scenarios using Ansible and Terraform.

## Directory Structure

### ansible/
- Contains Ansible playbooks and variable definitions.
- `basic/main.yaml`: Basic Ansible playbook.
- `variables/main.yaml`: Variable definitions for the Ansible playbooks.

### terraform/
- Contains Terraform configuration files organized by use case or environment.
- `basic/main.tf`: Basic Terraform setup.
- `google-compute-instance/main.tf`: Terraform configuration for creating Google Compute Engine instances.
- `long/main.tf`: Extended Terraform configuration.
- `variables/main.tf` and `variables/variables.tf`: Terraform variable definitions.

## Usage

- Use the Ansible playbooks in the `ansible/` directory to provision and configure systems.
- Use the Terraform configurations in the `terraform/` directory to provision infrastructure.

## Notes

- Review each playbook and configuration file for specific parameters and customize as needed.
- Ensure you have the necessary credentials and permissions to run the Ansible playbooks and Terraform configurations.
