# tf-test

## Overview

This repository contains infrastructure-as-code examples using Terraform and Ansible to provision and configure cloud resources and environments.

## Project Structure

- `terraform/`: Contains Terraform configurations for various infrastructure setups.
  - `basic/`: A simple example creating a random string resource.
  - `google-compute-instance/`: Example to provision a Google Compute Engine instance with a service account.
  - `long/`: An advanced example demonstrating multiple random string resources and outputs.

- `ansible/`: Contains Ansible playbooks for configuration management.
  - `basic/`: A basic playbook demonstrating simple tasks like ping and debug message.
  - `variables/`: Playbook showing usage of variables in Ansible tasks.

## Usage

1. Terraform examples can be applied by navigating to the respective directory and running typical Terraform commands:
   ```bash
   terraform init
   terraform apply
   ```

2. Ansible playbooks can be run using the `ansible-playbook` command:
   ```bash
   ansible-playbook path/to/playbook.yaml
   ```

## Prerequisites

- Terraform installed (version compatible with the configurations).
- Ansible installed for running playbooks.
- Google Cloud credentials configured for the Google Compute instance example.

## Notes

- The examples are intended for demonstration and learning purposes.
- Modify variables and configurations as needed for your environment.

---

Feel free to explore and extend these examples for your infrastructure automation needs.

