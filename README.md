# Infrastructure as Code (IaC) Examples

This repository contains example configurations for Infrastructure as Code using Ansible and Terraform. It serves as a playground and reference for basic and intermediate usage of these tools.

## Structure

### Ansible
Located in the `ansible/` directory, this section includes:
- **basic**: A simple playbook to verify Ansible functionality.
- **variables**: Demonstrates usage of variables in Ansible playbooks.

### Terraform
Located in the `terraform/` directory, this section includes:
- **basic**: A basic Terraform configuration generating random strings.
- **google-compute-instance**: Configuration to provision a Google Compute Engine instance.
- **variables**: Demonstrates input variables and outputs in Terraform.
- **long**: Contains a long running terraform resource.

## Usage

Each directory typically contains its own independent configuration. Navigate to the specific directory to run the respective tools (e.g., `ansible-playbook` or `terraform apply`).