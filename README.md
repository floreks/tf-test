# tf-test

## Overview
This repository contains infrastructure as code configurations using Terraform and Ansible. It is designed to manage and provision cloud resources and automate configuration management.

## Repository Structure

- `terraform/`: Contains Terraform configurations for provisioning cloud infrastructure.
  - `basic/`: Basic Terraform setup.
  - `google-compute-instance/`: Terraform configuration for provisioning Google Compute Engine instances.
  - `long/`: Extended Terraform configurations.
  - `variables/`: Variable definitions and Terraform modules.

- `ansible/`: Contains Ansible playbooks for configuration management and automation.
  - `basic/`: Basic Ansible playbooks.
  - `variables/`: Variable files for Ansible playbooks.

## Prerequisites

- Terraform installed (version compatible with the configurations).
- Ansible installed (version compatible with the playbooks).
- Access to the cloud provider (e.g., Google Cloud) with appropriate credentials configured.

## Usage

### Terraform
1. Navigate to the desired Terraform configuration directory, e.g., `terraform/basic`.
2. Initialize Terraform:
   ```bash
   terraform init
   ```
3. Review the execution plan:
   ```bash
   terraform plan
   ```
4. Apply the configuration:
   ```bash
   terraform apply
   ```

### Ansible
1. Navigate to the Ansible playbook directory, e.g., `ansible/basic`.
2. Run the playbook:
   ```bash
   ansible-playbook main.yaml
   ```

## Notes
- Ensure all variables are properly configured before applying Terraform or running Ansible playbooks.
- Review and customize the playbooks and Terraform files to fit your environment and requirements.

## License
Specify your license here if applicable.

---

This README provides a basic overview and usage instructions for the infrastructure code in this repository. Adjust as necessary for your specific project needs.
