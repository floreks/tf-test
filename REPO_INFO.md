# Repository Information

This repository (`tf-test`) contains Infrastructure as Code (IaC) examples using **Terraform** and **Ansible**. It serves as a testing and reference environment for infrastructure automation patterns.

## Repository Structure

```
.
├── ansible/
│   ├── basic/           # Basic Ansible playbook example
│   └── variables/       # Ansible playbook with variables
├── terraform/
│   ├── basic/           # Simple Terraform configuration
│   ├── variables/       # Terraform with variable definitions
│   ├── long/            # Terraform with loops and multiple resources
│   └── google-compute-instance/  # GCP compute instance example
├── .gitignore
└── README.md
```

## Terraform Modules

### Basic (`terraform/basic/`)

A minimal Terraform configuration demonstrating:
- `random_string` resource generation
- `null_resource` with local-exec provisioner
- Simple output values

### Variables (`terraform/variables/`)

Extends the basic example with configurable variables:
- `random_string_length` - Length of generated string (default: 5)
- `random_string_upper` - Include uppercase characters (default: false)
- `random_string_special` - Include special characters (default: false)
- `null_resource_command` - Command to execute (default: "echo")

### Long (`terraform/long/`)

Demonstrates advanced Terraform patterns:
- `for_each` loops for creating multiple resources
- Set-based iteration over strings
- Sensitive vs non-sensitive output handling
- Resource dependencies with `depends_on`

### Google Compute Instance (`terraform/google-compute-instance/`)

A real-world GCP infrastructure example featuring:
- Google Cloud provider configuration
- Service account creation
- Compute instance with:
  - Debian 11 boot disk
  - Custom metadata and labels
  - Startup script execution
  - Network interface configuration

## Ansible Playbooks

### Basic (`ansible/basic/main.yaml`)

A simple playbook targeting localhost:
- Host ping check using `ansible.builtin.ping`
- Debug message output

### Variables (`ansible/variables/main.yaml`)

Playbook demonstrating variable usage:
- Configurable debug message via `debug_message` variable
- Same basic structure as the basic playbook

## Technologies Used

- **Terraform** - Infrastructure provisioning
- **Ansible** - Configuration management
- **Google Cloud Platform** - Cloud provider (for GCP examples)

## Getting Started

### Terraform

```bash
cd terraform/<module>
terraform init
terraform plan
terraform apply
```

### Ansible

```bash
cd ansible/<playbook>
ansible-playbook main.yaml
```

## Notes

- The `.gitignore` excludes `crd` and `.idea` directories
- GCP examples require proper authentication and project configuration
- Some examples use `random_string` which generates new values on each apply
