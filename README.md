# tf-test

## Repository Overview

This repository contains infrastructure as code configurations using Ansible and Terraform.

### Directory Structure

- `ansible/`
  - Contains Ansible playbooks and variable definitions.
  - `basic/`: Basic Ansible playbooks.
  - `variables/`: Variable files for Ansible playbooks.

- `terraform/`
  - Contains Terraform configurations for various infrastructure setups.
  - `basic/`: Basic Terraform configuration.
  - `google-compute-instance/`: Terraform configuration for Google Compute Engine instances.
  - `long/`: Possibly a more complex or extended Terraform configuration.
  - `variables/`: Variable definitions for Terraform configurations.

## Usage

- Use the Ansible playbooks in the `ansible` directory to automate configuration management.
- Use the Terraform configurations in the `terraform` directory to provision and manage cloud infrastructure.

## Notes

- Each subdirectory contains relevant main configuration files (`main.yaml` for Ansible, `main.tf` for Terraform).
- Variable files are separated to allow easy customization of deployments.

This README will be updated as the repository evolves.
