# Infrastructure Repository

This repository contains infrastructure-as-code configurations managed using Terraform and Ansible.

## Directory Structure

- `ansible/`
  - Contains Ansible playbooks and variable files for configuration management and automation.
  - `basic/` - Basic playbook files.
  - `variables/` - Ansible variable definitions.

- `terraform/`
  - Terraform configurations to provision and manage cloud resources.
  - `basic/` - Basic infrastructure setup.
  - `google-compute-instance/` - Terraform configurations for Google Compute Engine instances.
  - `long/` - Extended Terraform configurations.
  - `variables/` - Terraform variable definitions.

## Usage

### Ansible

To run the Ansible playbooks, use:
```bash
ansible-playbook ansible/basic/main.yaml
```

### Terraform

Initialize the Terraform working directory:
```bash
terraform init terraform/basic
```

Plan your changes:
```bash
terraform plan -var-file=terraform/variables/variables.tf terraform/basic
```

Apply your changes:
```bash
terraform apply -var-file=terraform/variables/variables.tf terraform/basic
```

## Contributing

Please open an issue or submit a pull request for enhancements or bug fixes.

## License

Specify your license here.

---

*This README was auto-generated to provide an overview of the repository's structure and usage.*
