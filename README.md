# tf-test

This repository contains infrastructure as code examples using Terraform and Ansible.

## Directory Structure

- `terraform/`
  - Contains Terraform configuration files for provisioning cloud resources.
  - Subdirectories:
    - `basic/`: Simple Terraform example with random string and null resource.
    - `google-compute-instance/`: Terraform configuration for a Google Compute Engine instance.
    - `long/`: More complex Terraform example with multiple random strings and outputs.
    - `variables/`: Terraform variable definitions and usage.

- `ansible/`
  - Contains Ansible playbooks for automation and configuration management.
  - Subdirectories:
    - `basic/`: Basic Ansible playbook example that pings localhost and prints a message.
    - `variables/`: Ansible playbook demonstrating usage of variables.

## Usage

### Terraform

1. Navigate to the desired Terraform example directory.
2. Run `terraform init` to initialize the working directory.
3. Run `terraform apply` to apply the configuration and provision resources.

### Ansible

1. Navigate to the desired Ansible playbook directory.
2. Run `ansible-playbook main.yaml` to execute the playbook.

## Notes

- The Google Compute Engine instance configuration requires appropriate Google Cloud credentials and project setup.
- The Ansible playbooks are designed to run locally on the host machine.

## License

This project is licensed under the MIT License.
