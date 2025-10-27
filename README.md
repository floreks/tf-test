# Infrastructure Automation Project

This project contains infrastructure-as-code configurations using Ansible and Terraform.

## Overview

- **Ansible**: Used for configuration management and automation of software deployment. Contains playbooks and variable files for various environments.
- **Terraform**: Used for provisioning cloud infrastructure, with configurations for different setups including Google Compute instances.

## Directory Structure

```
ansible/
  basic/
    main.yaml          # Main Ansible playbook
  variables/
    main.yaml          # Variables used in Ansible playbooks
terraform/
  basic/
    main.tf            # Basic Terraform configurations
  google-compute-instance/
    main.tf            # Terraform config for GCP Compute Instances
  long/
    main.tf            # Extended Terraform configuration
  variables/
    main.tf            # Terraform variable definitions
    variables.tf       # Terraform variable type definitions
```

## Usage

- Use Ansible playbooks to automate software deployment and environment setup.
- Use Terraform configurations to provision and manage cloud resources.

## Prerequisites

- Ansible installed for running playbooks.
- Terraform installed for infrastructure provisioning.
- Appropriate cloud provider credentials configured for Terraform.

## Contributing

Feel free to submit issues or pull requests to improve configurations or add support for more environments.

## License

Specify your license here.
