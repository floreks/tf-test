# tf-test

Repository of Terraform and Ansible examples for testing and demos.

## Overview

This repo contains small example configurations for Terraform (Google Cloud) and
Ansible to demonstrate basic infrastructure provisioning and configuration.

## Structure

- ansible/
  - basic/        Ansible playbook examples
  - variables/    Sample variable files for playbooks
- terraform/
  - basic/        Minimal Terraform examples
  - google-compute-instance/  Example GCE instance configuration
  - long/         Larger Terraform example
  - variables/    Shared Terraform variable definitions

## Usage

Terraform:
- Change into a terraform subdirectory (e.g. terraform/basic)
- Run: terraform init && terraform apply

Ansible:
- Run: ansible-playbook ansible/basic/main.yaml

## Notes

This README was expanded by an automated agent to provide basic information
about the repository layout and usage.

