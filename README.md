# tf-test

## Project Overview

This repository contains infrastructure as code configurations using Terraform and Ansible. It is designed to manage and provision cloud resources and automate configuration management.

## Repository Structure

- `ansible/`: Contains Ansible playbooks and variable files for configuration management.
  - `basic/`: Basic Ansible playbook.
  - `variables/`: Variable definitions for Ansible playbooks.

- `terraform/`: Contains Terraform configurations for provisioning cloud infrastructure.
  - `basic/`: Basic Terraform configuration.
  - `google-compute-instance/`: Terraform configuration for provisioning Google Compute Engine instances.
  - `long/`: Extended Terraform configuration.
  - `variables/`: Variable definitions for Terraform configurations.

## Usage

### Prerequisites

- Terraform installed on your machine.
- Ansible installed on your machine.
- Appropriate cloud provider credentials configured (e.g., Google Cloud credentials).

### Running Terraform

1. Navigate to the desired Terraform directory, e.g., `terraform/basic`.
2. Initialize Terraform:
   ```bash
   terraform init
   ```
3. Review the execution plan:
   ```bash
   terraform plan
   ```
4. Apply the configuration:
   ```bash
   terraform apply
   ```

### Running Ansible

1. Navigate to the Ansible directory, e.g., `ansible/basic`.
2. Run the playbook:
   ```bash
   ansible-playbook main.yaml
   ```

## Contributing

Contributions are welcome. Please open issues or submit pull requests for improvements or bug fixes.

## License

Specify your license here.
