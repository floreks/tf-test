# tf-test

## Project Overview

This repository contains infrastructure automation code using Ansible and Terraform. It is organized into two main directories:

- `ansible/`: Contains Ansible playbooks for configuration management and automation tasks.
- `terraform/`: Contains Terraform configurations for provisioning cloud infrastructure resources.

## Usage Notes

### Ansible
- The Ansible playbooks are located under the `ansible/` directory.
- The `basic` subdirectory contains simple example playbooks such as `main.yaml` which demonstrates basic tasks like pinging hosts and printing messages.
- Variables for Ansible playbooks can be found under the `variables/` subdirectory.

### Terraform
- Terraform configurations are located under the `terraform/` directory.
- The `basic` subdirectory contains simple Terraform examples, such as generating random strings.
- The `google-compute-instance` subdirectory contains Terraform code for provisioning Google Compute Engine instances.
- The `long` directory contains more complex Terraform configurations with variables defined in the `variables/` subdirectory.

## Additional Comments

- Ensure you have the required tools installed: Ansible for running playbooks and Terraform for infrastructure provisioning.
- Customize variables and configurations as needed before applying.
- This repository serves as a starting point for infrastructure automation using Ansible and Terraform.
- Use appropriate environment and credentials setup for cloud provider access when running Terraform.

## License

Specify your project license here if applicable.


