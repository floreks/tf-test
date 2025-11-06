# tf-test

## Project Overview

This project is a Terraform and Ansible infrastructure as code repository designed to provide reusable configurations for various cloud resources and environments.

- The `terraform` directory contains Terraform configurations for provisioning resources such as Google Compute Instances and infrastructure environments.
- The `ansible` directory contains Ansible playbooks and variable definitions for configuration management of those environments.

## Usage Notes

- Terraform configurations can be applied using standard Terraform CLI commands (`terraform init`, `terraform apply`, etc.) in the relevant subdirectories within the `terraform` folder.
- Ansible playbooks can be executed using the `ansible-playbook` command targeting the appropriate inventory and variable files defined in the `ansible` folder.

## Comments and Additional Information

- The repository structure separates concerns cleanly between provisioning (Terraform) and configuration management (Ansible) to support modular and scalable infrastructure automation.
- Variable definitions are maintained within dedicated subdirectories named `variables` under both the Ansible and Terraform directories for easier management.
- Users should ensure they have the required cloud provider credentials and CLI tools installed to work with Terraform and Ansible effectively with this project.
- The repository aims to provide a foundation that can be extended with additional modules, playbooks, and environments to fit specific deployment needs.


