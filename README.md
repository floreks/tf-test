# tf-test

A test repository containing example Terraform and Ansible configurations for infrastructure automation.

## Structure

```
.
├── ansible/
│   ├── basic/          # Basic Ansible playbook with ping and debug tasks
│   └── variables/      # Ansible playbook demonstrating variable usage
└── terraform/
    ├── basic/                    # Basic Terraform with random string and null resource
    ├── variables/                # Terraform example using input variables
    ├── google-compute-instance/  # Google Cloud Compute Engine instance configuration
    └── long/                     # Additional Terraform configuration
```

## Terraform Examples

- **basic**: Demonstrates `random_string` and `null_resource` with local-exec provisioner
- **variables**: Shows how to use Terraform input variables
- **google-compute-instance**: Creates a Google Cloud Compute Engine instance with service account

## Ansible Examples

- **basic**: Simple playbook with ping and debug message tasks
- **variables**: Playbook demonstrating Ansible variable interpolation
