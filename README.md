# tf-test

This repository contains infrastructure as code examples using Ansible and Terraform.

## Directory Structure

- `ansible/`
  - `basic/`: Contains a simple Ansible playbook that pings localhost and prints a message.
  - `variables/`: Contains an Ansible playbook demonstrating usage of variables.

- `terraform/`
  - `basic/`: A basic Terraform configuration that generates a random string and outputs it.
  - `google-compute-instance/`: Terraform configuration to create a Google Cloud Compute instance with a custom service account, startup script, and network interface.
  - `long/`: A more complex Terraform example creating multiple random strings and printing them with delays.
  - `variables/`: Terraform variables and resources configuration for random string generation and null resource execution.

## Usage

- Ansible playbooks can be run using `ansible-playbook` command targeting the respective YAML files.
- Terraform configurations can be applied using `terraform init` and `terraform apply` commands in the respective directories.

## Details

- The Ansible playbooks demonstrate basic tasks such as pinging hosts and printing messages, including usage of variables.
- The Terraform configurations showcase resource creation, output handling, and provider configuration for Google Cloud.
- The Google Compute instance setup includes metadata, service account, and startup script customization.

This repository serves as a learning and testing ground for infrastructure automation using Ansible and Terraform.
