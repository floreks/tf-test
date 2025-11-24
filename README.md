# Infrastructure as Code Repository

This repository contains infrastructure as code configurations using Terraform and Ansible. It is designed to manage cloud resources and automate server configuration.

## Directory Structure

- `terraform/`: Contains Terraform configurations for provisioning cloud infrastructure.
  - `basic/`: Basic Terraform setup example.
  - `google-compute-instance/`: Terraform configuration for creating Google Compute Engine instances.
  - `long/`: Extended Terraform configuration examples.
  - `variables/`: Variable definitions for Terraform modules.

- `ansible/`: Contains Ansible playbooks for configuration management.
  - `basic/`: Basic playbook examples.
  - `variables/`: Variable files used in Ansible playbooks.

## Prerequisites

- Terraform installed (version compatible with the configurations).
- Ansible installed.
- Access to the cloud provider (e.g., Google Cloud) with appropriate credentials.

## Usage

### Terraform

1. Navigate to the desired Terraform configuration directory, e.g., `terraform/basic`.
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

### Ansible

1. Navigate to the desired Ansible playbook directory, e.g., `ansible/basic`.
2. Run the playbook:
   ```bash
   ansible-playbook main.yaml
   ```

## Notes

- Ensure all required variables are set before running Terraform or Ansible.
- Customize the configurations and playbooks as needed for your environment.

## License

This repository is provided as-is without any warranty.
