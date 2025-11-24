# tf-test

## Overview
This project demonstrates infrastructure automation using Terraform and Ansible. It includes Terraform configurations for provisioning cloud resources and Ansible playbooks for configuration management and testing.

## Project Structure

- `terraform/`
  - Contains Terraform configurations for various infrastructure setups.
  - `basic/`: Basic Terraform example with random string and null resource.
  - `google-compute-instance/`: Terraform setup for provisioning a Google Compute Engine instance.
  - `long/`: Another Terraform configuration (details not specified).
  - `variables/`: Terraform variables and related configurations.

- `ansible/`
  - Contains Ansible playbooks for automation.
  - `basic/`: Basic playbook with simple tasks like ping and debug.
  - `variables/`: Playbook demonstrating variable usage in Ansible.

## Usage

### Terraform
1. Navigate to the desired Terraform configuration directory.
2. Initialize Terraform:
   ```
   terraform init
   ```
3. Review the plan:
   ```
   terraform plan
   ```
4. Apply the configuration:
   ```
   terraform apply
   ```

### Ansible
1. Navigate to the Ansible playbook directory.
2. Run the playbook with:
   ```
   ansible-playbook main.yaml
   ```

## Requirements

- Terraform installed (version compatible with the configurations).
- Ansible installed for running playbooks.
- Google Cloud credentials configured if using the Google Compute instance setup.

## Notes

- Modify variables in the Terraform `variables` directory to customize resource properties.
- Ansible playbooks are designed for localhost execution in this setup.

---

This README provides a basic guide to understanding and using the infrastructure code in this repository. Adjust and extend as needed for your specific use case.
