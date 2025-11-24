# Infrastructure Automation Project

This repository contains infrastructure automation code using Terraform and Ansible. It provides reusable infrastructure components and example configurations for managing cloud resources and automation tasks.

## Project Structure

- `terraform/`
  - Contains Terraform configurations for provisioning cloud infrastructure.
  - Subdirectories:
    - `basic/`: Simple example Terraform configuration.
    - `google-compute-instance/`: Terraform configuration to create Google Cloud Compute instances with service accounts and metadata.
    - `long/`: Extended Terraform example with multiple resources.
    - `variables/`: Variable definitions used across Terraform configurations.

- `ansible/`
  - Contains Ansible playbooks for automation and configuration management.
  - Subdirectories:
    - `basic/`: Basic playbook examples.
    - `variables/`: Playbooks demonstrating variable usage.

## Usage

### Terraform

1. Navigate to the desired Terraform configuration directory, e.g., `terraform/google-compute-instance/`.
2. Initialize Terraform:
   ```bash
   terraform init
   ```
3. Review the planned changes:
   ```bash
   terraform plan
   ```
4. Apply the configuration:
   ```bash
   terraform apply
   ```

### Ansible

1. Navigate to the Ansible playbook directory, e.g., `ansible/basic/`.
2. Run the playbook:
   ```bash
   ansible-playbook main.yaml
   ```

## Notes

- The Terraform configurations include examples of using random strings, null resources, and Google Cloud resources.
- Ansible playbooks include simple tasks like pinging hosts and printing messages.

## License

This project is licensed under the MIT License.

