# tf-test

## Overview

This repository contains infrastructure and configuration code using Terraform and Ansible.

## Directory Structure

### ansible/
- `basic/`: Contains basic Ansible playbook(s) for initial configurations.
- `variables/`: Contains variable definitions for Ansible playbooks.

### terraform/
- `basic/`: Basic Terraform configuration for infrastructure provisioning.
- `google-compute-instance/`: Terraform configuration specifically for managing Google Compute instances.
- `long/`: Extended or larger-scale Terraform configurations.
- `variables/`: Contains Terraform variables and variable definitions.

## Usage

- Use the Ansible playbooks to automate configuration management.
- Use the Terraform configurations to provision and manage infrastructure resources.

## Notes

- Make sure to customize variables in the respective variable files before applying any configurations.
- Validate your Terraform plans and run Ansible playbooks in a controlled environment.

## License

Specify your license here if applicable.
