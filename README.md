# tf-test

## Overview

This repository contains infrastructure-as-code configuration examples and modules primarily using Ansible and Terraform.

## Repository Structure

### ansible/
- Contains Ansible playbooks and variables for basic setup and configurations.
- `basic/main.yaml` - Basic Ansible playbook example.
- `variables/main.yaml` - Variables used within Ansible playbooks.

### terraform/
- Includes multiple Terraform configurations targeting different environments and use cases.
- `basic/main.tf` - Basic Terraform configuration example.
- `google-compute-instance/main.tf` - Terraform configuration for provisioning a Google Compute Instance.
- `long/main.tf` - Potentially more complex or extended Terraform configuration.
- `variables/` - Contains Terraform variables definitions and main configuration.

## Usage

- Use Ansible playbooks by running `ansible-playbook` with the respective playbook files located under `ansible`.
- Use Terraform configurations by running `terraform init` and `terraform apply` in the respective Terraform subdirectories.

## Contributing

Feel free to contribute improvements or additional configurations by submitting a pull request.

## License

Specify your license here if applicable.
