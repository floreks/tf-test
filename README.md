# tf-test

A test repository containing sample Terraform and Ansible configurations for infrastructure automation testing.

## Overview

This repository provides example configurations for testing infrastructure-as-code workflows with:

- **Terraform** - Infrastructure provisioning examples
- **Ansible** - Configuration management playbooks

## Repository Structure

```
.
├── terraform/
│   ├── basic/                    # Basic Terraform example with random string generation
│   ├── variables/                # Terraform example demonstrating variable usage
│   ├── google-compute-instance/  # Google Cloud Compute Engine instance provisioning
│   └── long/                     # Extended Terraform configuration
├── ansible/
│   ├── basic/                    # Basic Ansible playbook with ping and debug tasks
│   └── variables/                # Ansible playbook demonstrating variable usage
└── README.md
```

## Terraform Examples

### Basic
Simple configuration using `random_string` and `null_resource` providers to generate and output a random string.

### Variables
Demonstrates Terraform variable usage with configurable parameters for string generation.

### Google Compute Instance
Provisions a Google Cloud Compute Engine instance with:
- Custom service account
- Debian 11 boot disk
- Startup script execution
- Metadata and tagging

## Ansible Examples

### Basic
Simple playbook that runs against localhost with ping and debug message tasks.

### Variables
Playbook demonstrating Ansible variable interpolation with customizable debug messages.
