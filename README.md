# tf-test

## Project Overview
This repository contains infrastructure-as-code configurations organized under two main directories: `ansible` and `terraform`. The `ansible` directory houses Ansible playbooks and variables, whereas the `terraform` directory includes Terraform modules and configurations for provisioning cloud infrastructure resources.

## Usage Notes
- The project is organized to separate concerns by infrastructure management tool.
- Ansible playbooks and variables can be found under `ansible/basic` and `ansible/variables` respectively.
- Terraform configurations are modularized under `terraform` with example usage in subdirectories like `basic` and specialized modules such as `google-compute-instance`.
- Variables definitions for Terraform are placed in `terraform/variables`.

## Additional Information
- Follow standard practices for managing infrastructure as code with version control.
- Update playbooks and Terraform modules while adhering to structure and naming conventions shown.
- Review the individual configuration files under each directory to understand detailed setup for various environments.
- Ensure to test changes in a staging setup before applying them in production environments.

