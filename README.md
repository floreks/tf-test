# tf-test

A test repository containing Terraform and Ansible configurations for infrastructure automation testing and experimentation.

## Contents

### Terraform

- **basic/** - Simple configuration using random string generation and null resource with local-exec provisioner
- **variables/** - Demonstrates Terraform variable usage with configurable random string and null resource parameters
- **google-compute-instance/** - GCP Compute Engine instance provisioning with service account and custom metadata
- **long/** - Extended Terraform configuration examples

### Ansible

- **basic/** - Simple playbook with ping and debug tasks targeting localhost
- **variables/** - Playbook demonstrating Ansible variable interpolation with debug output

## Purpose

This repository serves as a testing ground for:
- Infrastructure as Code (IaC) patterns with Terraform
- Configuration management automation with Ansible
- Variable handling and parameterization across both tools
- GCP resource provisioning examples
