# tf-test

This repository contains infrastructure as code configurations using Ansible and Terraform.

## Directory Structure

- `ansible/`
  - `basic/`: Contains basic Ansible playbook `main.yaml`.
  - `variables/`: Contains Ansible variable definitions in `main.yaml`.

- `terraform/`
  - `basic/`: Contains basic Terraform configuration `main.tf`.
  - `google-compute-instance/`: Contains Terraform configuration for Google Compute Instance in `main.tf`.
  - `long/`: Contains a longer Terraform configuration in `main.tf`.
  - `variables/`: Contains Terraform variable definitions in `main.tf` and `variables.tf`.

This setup allows managing infrastructure provisioning and configuration using both Ansible and Terraform tools.
