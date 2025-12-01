# tf-test

A test repository containing example Terraform and Ansible configurations for infrastructure automation testing.

## Repository Structure

```
.
├── terraform/           # Terraform configurations
│   ├── basic/           # Basic example with random string generation
│   ├── variables/       # Example demonstrating variable usage
│   ├── long/            # Extended example with multiple resources
│   └── google-compute-instance/  # GCP compute instance example
└── ansible/             # Ansible playbooks
    ├── basic/           # Basic playbook with ping and debug
    └── variables/       # Playbook demonstrating variable usage
```

## Terraform Examples

### Basic
A simple configuration that generates a random string and outputs it using a null resource.

### Variables
Demonstrates variable usage in Terraform with configurable options for:
- `random_string_length` - Length of the generated string
- `random_string_upper` - Include uppercase characters
- `random_string_special` - Include special characters
- `null_resource_command` - Command to execute

### Long
An extended example that creates multiple random strings using `for_each` and demonstrates sensitive vs non-sensitive outputs.

### Google Compute Instance
A GCP-focused example that provisions:
- A service account
- A Debian 11 compute instance with custom metadata and startup script

## Ansible Examples

### Basic
A simple playbook that pings localhost and prints a "Hello world" message.

### Variables
Demonstrates variable usage in Ansible playbooks with a configurable debug message.

## Usage

### Terraform

```bash
cd terraform/basic
terraform init
terraform plan
terraform apply
```

### Ansible

```bash
cd ansible/basic
ansible-playbook main.yaml
```

## Requirements

- Terraform >= 1.0
- Ansible >= 2.9
- For GCP examples: Google Cloud SDK and appropriate credentials
