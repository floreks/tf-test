# Infrastructure as Code Examples

This repository contains Infrastructure as Code (IaC) examples using Terraform and Ansible for testing and demonstration purposes.

## Repository Structure

```
.
├── terraform/           # Terraform configurations
│   ├── basic/           # Basic example with random string generation
│   ├── variables/       # Example demonstrating Terraform variables
│   ├── google-compute-instance/  # GCP compute instance provisioning
│   └── long/            # Extended example with multiple resources
└── ansible/             # Ansible playbooks
    ├── basic/           # Basic playbook with ping and debug tasks
    └── variables/       # Playbook demonstrating variable usage
```

## Terraform Examples

### Basic (`terraform/basic`)
A simple Terraform configuration that generates a random string and outputs the result using a null resource.

### Variables (`terraform/variables`)
Demonstrates the use of Terraform input variables for configuring random string generation and command execution.

### Google Compute Instance (`terraform/google-compute-instance`)
Provisions a Google Cloud Platform compute instance with:
- Custom service account
- Debian 11 boot disk
- Metadata and startup script configuration

### Long (`terraform/long`)
An extended example that creates multiple random strings using `for_each` and demonstrates sensitive vs. non-sensitive outputs.

## Ansible Examples

### Basic (`ansible/basic`)
A simple playbook that:
- Pings localhost
- Prints a "Hello world" message

### Variables (`ansible/variables`)
Demonstrates Ansible variable usage with a configurable debug message.

## Usage

### Terraform
```bash
cd terraform/<example>
terraform init
terraform plan
terraform apply
```

### Ansible
```bash
cd ansible/<example>
ansible-playbook main.yaml
```
