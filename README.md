# tf-test

## Project Overview
This project contains infrastructure-as-code examples and configurations primarily using Terraform and Ansible. It showcases basic and more advanced infrastructure deployments such as Google Compute Engine instances and other Terraform managed resources, alongside Ansible playbooks for automation.

## Directory Structure
- `ansible/` - Contains Ansible playbooks and variable definitions, organized by basic playbook and variables.
- `terraform/` - Contains Terraform configurations for different setups, including basic examples and Google Cloud specific resources.

## Usage Notes
1. Terraform directories generally include `main.tf` for defining resources and sometimes a `variables.tf` file for input variables.
2. Ansible playbooks can be executed using `ansible-playbook` CLI tool with the relevant `main.yaml` playbook.
3. Be sure to configure your cloud provider credentials and Terraform backend settings as needed.
4. Review and adjust variable values in each directory's variable files to fit your environment prior to apply.
5. Follow best practices for Terraform and Ansible state and secrets management.

## Comments
- This repo is structured to allow modular learning and deployment of infrastructure components.
- Requires appropriate toolchains installed such as Terraform, Ansible, and proper permissions to interact with cloud APIs.
- Update the README.md as the project evolves to keep documentation accurate and helpful.

---

For any issues or contributions, please open GitHub issues or pull requests accordingly.
