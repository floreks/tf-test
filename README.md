# tf-test

This repository contains infrastructure as code (IaC) and automation configurations using Terraform and Ansible.

## Repository Structure

### ansible/
Contains Ansible playbooks and variable definitions for infrastructure automation.
- `basic/`: Core playbooks for general setup and configuration.
- `variables/`: Variable definitions used in Ansible playbooks.

### terraform/
Contains Terraform configurations for provisioning cloud resources.
- `basic/`: Simple or foundational Terraform configurations.
- `google-compute-instance/`: Terraform configurations specifically for Google Compute instances.
- `long/`: More complex or extended Terraform configurations.
- `variables/`: Terraform variable definitions and main config files.

## Usage

- Use the Ansible playbooks in `ansible/` for configuration management tasks.
- Use the Terraform configs in `terraform/` for provisioning and managing infrastructure.

---

This README will be updated as the repository evolves, to provide up-to-date information about the configurations and their purposes.
