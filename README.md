# tf-test

## Repository Overview

This repository contains infrastructure as code configurations using Ansible and Terraform.

## Directory Structure

### ansible/
- Contains Ansible playbooks and variable definitions.
- `basic/`: Basic Ansible playbook configurations (`main.yaml`).
- `variables/`: Variable definitions for Ansible (`main.yaml`).

### terraform/
- Contains Terraform configurations for various setups.
- `basic/`: Basic Terraform configuration (`main.tf`).
- `google-compute-instance/`: Terraform configuration for Google Compute Engine instance (`main.tf`).
- `long/`: More extensive Terraform configuration (`main.tf`).
- `variables/`: Terraform variable definitions (`main.tf` and `variables.tf`).

## Usage

- Use the Ansible playbooks to configure and manage systems.
- Use the Terraform configurations to provision and manage cloud infrastructure.

## Notes

- Ensure you have the necessary tools installed (Ansible, Terraform) to use the configurations.
- Customize variable files as needed for your environment.
