# tf-test

This project contains infrastructure-as-code configurations using Terraform and Ansible.

## Project Structure

- `ansible/`: Contains Ansible playbooks and variables for configuration management.
  - `basic/main.yaml`: Example or base Ansible playbook.
  - `variables/main.yaml`: Variables used in Ansible playbooks.

- `terraform/`: Contains Terraform configurations for provisioning infrastructure.
  - `basic/main.tf`: Basic Terraform configuration example.
  - `google-compute-instance/main.tf`: Terraform configuration to provision a Google Compute Engine instance.
  - `long/`: More extensive or complex Terraform configurations.
    - `main.tf`: Main Terraform configuration for the `long` setup.
  - `variables/`: Variables and associated Terraform configuration.
    - `main.tf`: Terraform code related to variables.
    - `variables.tf`: Terraform variables definitions.

## Purpose

The project aims to provide a modular, example-driven infrastructure as code setup that uses Terraform for resource provisioning and Ansible for configuration and management. It covers a range of basic and more advanced scenarios across both tools.

## Usage

- Terraform configurations can be applied by running:

  ```bash
  terraform init
  terraform apply
  ```

- Ansible playbooks can be run by executing:

  ```bash
  ansible-playbook ansible/basic/main.yaml
  ```

Ensure you have the required cloud provider credentials and proper environment setup before applying Terraform or running Ansible playbooks.

## License

Include your project license here.

## Contributing

Contributions are welcome! Please open issues and pull requests for improvements and fixes.
