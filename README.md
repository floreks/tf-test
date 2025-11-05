# tf-test

## Project Overview
This project contains infrastructure as code configurations using Ansible and Terraform. It is designed to manage and provision cloud resources and configurations in a modular and organized manner.

The project is structured into two main directories:

- `ansible/`: Contains Ansible playbooks and variable files for configuration management.
- `terraform/`: Contains Terraform configurations for provisioning cloud infrastructure, including basic setups and Google Compute instances.

## Usage Notes

### Ansible
- The Ansible playbooks are located under the `ansible/basic` and `ansible/variables` directories.
- Use these playbooks to automate configuration management tasks.
- Run Ansible commands from the root directory or within the `ansible` directory to apply configurations.

### Terraform
- Terraform configurations are organized under the `terraform` directory with subdirectories for different environments and resources.
- Use Terraform CLI commands (`terraform init`, `terraform plan`, `terraform apply`) within the specific Terraform subdirectory to manage infrastructure.
- Ensure you have the necessary cloud provider credentials configured before applying Terraform plans.

## Additional Comments
- This repository assumes familiarity with Ansible and Terraform tools.
- Ensure you have the required dependencies installed before running any playbooks or Terraform commands.
- Review variable files to customize configurations according to your environment.
- Follow best practices for managing secrets and sensitive information outside of this repository.

For more detailed documentation, refer to the respective tool documentation:
- [Ansible Documentation](https://docs.ansible.com/ansible/latest/index.html)
- [Terraform Documentation](https://www.terraform.io/docs/index.html)

## Project Overview
This project contains infrastructure as code configurations using Ansible and Terraform. It is designed to manage and provision cloud resources and configurations in a modular and organized manner.

The project is structured into two main directories:

- `ansible/`: Contains Ansible playbooks and variable files for configuration management.
- `terraform/`: Contains Terraform configurations for provisioning cloud infrastructure, including basic setups and Google Compute instances.

## Usage Notes

### Ansible
- The Ansible playbooks are located under the `ansible/basic` and `ansible/variables` directories.
- Use these playbooks to automate configuration management tasks.
- Run Ansible commands from the root directory or within the `ansible` directory to apply configurations.

### Terraform
- Terraform configurations are organized under the `terraform` directory with subdirectories for different environments and resources.
- Use Terraform CLI commands (`terraform init`, `terraform plan`, `terraform apply`) within the specific Terraform subdirectory to manage infrastructure.
- Ensure you have the necessary cloud provider credentials configured before applying Terraform plans.

## Additional Comments
- This repository assumes familiarity with Ansible and Terraform tools.
- Ensure you have the required dependencies installed before running any playbooks or Terraform commands.
- Review variable files to customize configurations according to your environment.
- Follow best practices for managing secrets and sensitive information outside of this repository.

For more detailed documentation, refer to the respective tool documentation:
- [Ansible Documentation](https://docs.ansible.com/ansible/latest/index.html)
- [Terraform Documentation](https://www.terraform.io/docs/index.html)
