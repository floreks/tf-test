# tf-test

A test repository containing Infrastructure as Code (IaC) examples for Terraform and Ansible.

## Overview

This repository provides sample configurations for learning and testing infrastructure automation tools:

- **Terraform** - Infrastructure provisioning examples
- **Ansible** - Configuration management playbooks

## Repository Structure

```
.
├── terraform/
│   ├── basic/                    # Basic Terraform example with random string and null resource
│   ├── google-compute-instance/  # GCP compute instance provisioning
│   ├── long/                     # Extended Terraform configuration
│   └── variables/                # Terraform variables usage example
└── ansible/
    ├── basic/                    # Basic Ansible playbook with ping and debug
    └── variables/                # Ansible playbook with variables
```

## Terraform Examples

| Example | Description |
|---------|-------------|
| `basic` | Generates a random string and outputs it using a null resource |
| `google-compute-instance` | Provisions a GCP compute instance with service account |
| `variables` | Demonstrates variable usage in Terraform configurations |

## Ansible Examples

| Example | Description |
|---------|-------------|
| `basic` | Simple playbook demonstrating ping and debug modules |
| `variables` | Playbook showcasing variable interpolation with debug output |

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
