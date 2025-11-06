# tf-test

## Project Overview

This project is a collection of infrastructure as code definitions primarily using Terraform and Ansible. It is structured to provide reusable modules and example setups for managing cloud and server resources.

The repository contains:
- Ansible playbooks and variable definitions in the "ansible" directory
- Terraform configurations divided into multiple environments and modules under the "terraform" directory

## Usage

- Use the Ansible playbooks under the "ansible/basic/main.yaml" to provision and configure systems with predefined variables.
- Terraform modules are located in different folders representing various infrastructure setups, such as "google-compute-instance" for Google Cloud compute resources.
- Customize the Terraform variables in the "terraform/variables" directory to suit the target environment.
- This project assumes familiarity with Terraform and Ansible CLI tools for deployment and management.

## Comments and Notes

- Make sure to keep Terraform state securely managed if adapting these configurations.
- Validate your playbooks and terraform plans before applying changes in production environments.
- The hierarchical structure helps isolate different environments and use cases while sharing common definitions.
- Review and update dependencies as the cloud provider APIs evolve.
- Contributions to expand or improve infrastructure examples are welcome.


