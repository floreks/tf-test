# tf-test

This repository contains infrastructure as code examples using Ansible and Terraform.

## Structure

### Ansible
- **basic/**: A basic playbook example that pings localhost and prints a debug message.
- **variables/**: Playbook demonstrating the use of variables, pings hosts and prints a message using a variable.

### Terraform
- **basic/**: Terraform configuration that generates a random string and prints it.
- **google-compute-instance/**: Terraform module to deploy a Google Compute Instance with a service account, network interface, and startup script.
- **long/**: Terraform example creating multiple random strings and outputs them with different sensitivity settings.
- **variables/**: Terraform variables configuration and example usage of random string resources with customizable parameters.

## Usage

- Ansible playbooks can be run using `ansible-playbook` command pointing to the playbooks in the Ansible folders.
- Terraform configurations can be initialized and applied with `terraform init` and `terraform apply` commands in the respective Terraform folders.

## Notes

- Terraform configurations use random string generation and local-exec provisioners to demonstrate resource usage and output.
- Google Compute Instance setup includes a custom service account and metadata startup script example.

This README aims to provide a quick overview of the repository contents and how to use them.