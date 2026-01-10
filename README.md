# Repository Overview

This repository contains sample configurations and playbooks for both Ansible and Terraform automation tools.

## Directory Structure

- `ansible/`
  - `basic/`: Contains a simple Ansible playbook `main.yaml` with example tasks.
  - `variables/`: Contains an Ansible playbook `main.yaml` demonstrating usage of variables.

- `terraform/`
  - `basic/`: A basic Terraform setup including a random string resource and null resource.
  - `google-compute-instance/`: Terraform configuration for provisioning a Google Compute Engine instance including service account setup.
  - `long/`: A more extensive Terraform configuration demonstrating usage of multiple random strings with looping and outputs.
  - `variables/`: Variable definitions and corresponding Terraform configuration using those variables.

## Files

- `.gitignore`: Git ignore file for specifying untracked files or paths.
- `README.md`: This file providing an overview of the repository contents.

## Purpose

The contents provide example setup and provisioning scripts for infrastructure as code and configuration management using popular open-source tools Ansible and Terraform.

## Usage

To use the Ansible playbooks, run `ansible-playbook` against the appropriate `.yaml` files.

To use the Terraform configurations, run `terraform init` and `terraform apply` in the respective directories.

