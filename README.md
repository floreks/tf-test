# tf-test

This repository contains infrastructure as code configurations managed with Terraform and Ansible.

## Structure

- **ansible/**: Contains Ansible playbooks and variable definitions
  - **basic/**: A simple Ansible playbook that includes tasks such as pinging localhost and printing a message.
  - **variables/**: Ansible variable definitions.

- **terraform/**: Contains Terraform configurations
  - **basic/**: Basic Terraform configuration with a random string resource and a null_resource that executes a local command.
  - **google-compute-instance/**: Terraform setup for provisioning a Google Compute Engine instance including service account and instance resources.
  - **long/**: A more complex Terraform configuration using a collection of resources (details not expanded here).
  - **variables/**: Variable definitions used in Terraform configurations, including variable files for string sets and boolean flags.

## Usage

- To use the Ansible playbooks, run `ansible-playbook` commands from within the ansible directory.
- To use the Terraform modules, run `terraform init`, `terraform plan`, and `terraform apply` commands from within the terraform subdirectories.

This structure supports modularization of infrastructure components through both Terraform and Ansible tools.
