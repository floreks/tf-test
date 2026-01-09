# tf-test

A small repository with Terraform and Ansible example configurations used for testing and demos.

Repository structure

- ansible/
  - basic/ - simple Ansible playbook(s) (main.yaml)
  - variables/ - variable examples for Ansible

- terraform/
  - basic/ - minimal Terraform example
  - google-compute-instance/ - example GCE instance
  - long/ - larger Terraform example
  - variables/ - Terraform variable definitions

Quick start

- Terraform (example):

  cd terraform/basic
  terraform init
  terraform plan
  terraform apply

- Ansible (example):

  cd ansible/basic
  # Review playbook before running
  ansible-playbook main.yaml -i inventory

Notes

- These examples are for demonstration and may require configuration (cloud credentials, inventories, etc.) before use.
- Review each subdirectory's README or files for specific usage instructions.

License

MIT
