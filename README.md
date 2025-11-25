# tf-test

This repository contains sample Terraform and Ansible configurations used for testing and demonstration purposes.

## Overview

- Terraform: example configurations to create resources (Compute instances, networks, etc.).
- Ansible: example playbooks and variable files for configuration management.

This README explains the repository layout, how to use the examples, and notes for contributors.

## Repository structure

- ansible/
  - basic/: simple Ansible playbook examples
  - variables/: example variable files used by the playbooks

- terraform/
  - basic/: minimal Terraform example
  - google-compute-instance/: Terraform example for Google Compute instances
  - long/: larger Terraform example
  - variables/: shared variable definitions and examples

- README.md: this file

## Prerequisites

- Terraform (recommended >= 0.12)
- Ansible (recommended >= 2.9) for the Ansible examples
- For the Google examples: gcloud SDK and appropriate credentials

## Using the Terraform examples

Each Terraform example is self-contained under terraform/.
To try an example:

1. cd into the example directory (for example: terraform/basic)
2. terraform init
3. terraform plan
4. terraform apply

Note: Review and set any required variables. The terraform/variables directories include sample variable files and variable definitions.

## Using the Ansible examples

The Ansible examples are under ansible/. To run a simple playbook:

1. cd ansible/basic
2. ansible-playbook -i inventory.ini main.yaml

Adjust inventory, variables, and target hosts as appropriate.

## Contributing

Contributions are welcome. Please open an issue or a pull request with proposed changes. Keep changes small and focused; include documentation updates where relevant.

## License

No license is specified. Contact the repository owner for licensing information.

