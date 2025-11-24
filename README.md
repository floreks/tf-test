# tf-test

## Project Overview

This repository contains infrastructure as code configurations using Terraform and Ansible. It is designed to provision and manage cloud infrastructure resources and automate configuration management.

## Directory Structure

- `terraform/`: Contains Terraform configurations for provisioning cloud resources.
  - `basic/`: Basic Terraform setup.
  - `google-compute-instance/`: Terraform configuration for provisioning Google Compute Engine instances.
  - `long/`: Extended Terraform configurations.
  - `variables/`: Variable definitions for Terraform.

- `ansible/`: Contains Ansible playbooks for configuration management.
  - `basic/`: Basic Ansible playbooks.
  - `variables/`: Variable files for Ansible playbooks.

## Getting Started

### Prerequisites

- Terraform installed (version compatible with the configurations)
- Ansible installed
- Access to the cloud provider (e.g., Google Cloud) with appropriate credentials

### Usage

1. Navigate to the desired Terraform configuration directory and run:
   ```bash
   terraform init
   terraform apply
   ```

2. Use Ansible to run playbooks for configuration management:
   ```bash
   ansible-playbook -i inventory_file playbook.yaml
   ```

## Notes

- Ensure you have the necessary permissions and credentials configured for your cloud provider.
- Review the variable files to customize configurations as needed.

## License

Specify your project's license here.
