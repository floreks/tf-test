# tf-test

## Project Overview
This project contains Terraform and Ansible configurations for infrastructure provisioning and automation. The Terraform configurations manage cloud resources such as compute instances, while the Ansible playbooks automate software deployment and configuration.

## Usage Notes
- Terraform configurations are organized by environment and resource type under the `terraform/` directory.
- Ansible playbooks and variables are located in the `ansible/` directory.
- To provision infrastructure, navigate to the appropriate Terraform directory and run `terraform init` followed by `terraform apply`.
- To run Ansible automation, use `ansible-playbook` with the relevant playbook file.

## Comments
- Ensure you have the necessary cloud provider credentials configured before running Terraform.
- Review and customize variable files as needed for your environment.
- This repository is structured to support modular and reusable infrastructure and automation code.
- Keep Terraform state files secure and backed up.

