# Infrastructure as Code Examples

This repository contains examples of Infrastructure as Code (IaC) using Ansible and Terraform. It serves as a testing ground and reference for various configurations.

## Project Structure

### Ansible (`ansible/`)
Contains Ansible playbooks for configuration management.
- `basic/`: A simple "Hello World" playbook demonstrating basic tasks like ping and debug messages.
- `variables/`: Examples demonstrating variable usage in Ansible.

### Terraform (`terraform/`)
Contains Terraform configurations for infrastructure provisioning.
- `basic/`: A basic example generating a random string and using a local-exec provisioner.
- `google-compute-instance/`: Configuration for provisioning a Google Cloud Platform (GCP) Compute Instance, including service accounts and startup scripts.
- `long/`: A stress test configuration that creates multiple random string resources with a sleep delay, useful for testing parallelism and long-running operations.
- `variables/`: Demonstrates the usage of input variables in Terraform to customize resource properties.

## Usage

Each subdirectory contains a standalone configuration. Navigate to the desired directory to run the tools.

### Terraform
```bash
cd terraform/basic
terraform init
terraform apply
```

### Ansible
```bash
cd ansible/basic
ansible-playbook main.yaml
```