# tf-test

## Project Overview

This repository is a collection of infrastructure as code configurations using Terraform and Ansible. It includes various Terraform modules for provisioning cloud resources and Ansible playbooks for automation tasks.

### Key Components:
- **Terraform**: Contains configurations for basic setups as well as specific modules like Google Compute Instance provisioning.
- **Ansible**: Provides playbooks for automation and managing variables.

## Usage Notes

- Ensure you have Terraform and Ansible installed and configured before using this repository.
- Customize variable files to fit your infrastructure requirements.
- Follow the directory structure to understand which module or playbook corresponds to which environment or purpose.

## Helpful Comments

- The `ansible/` directory contains distinct playbooks and variables for automation.
- The `terraform/` directory contains multiple subdirectories representing different infrastructure modules.
- Variable files are located under their respective module directories for modular configuration.
- This repository assumes basic knowledge of Terraform and Ansible for effective usage.

For any changes, please follow the branching and pull request guidelines to maintain code quality.
