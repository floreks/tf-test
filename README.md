# tf-test

This repository contains infrastructure-as-code configurations primarily focused on Terraform and Ansible setups.

## Repository Structure

- `ansible/`: Contains Ansible playbooks and variable definitions for automation and configuration management tasks.
  - `basic/main.yaml`: Basic Ansible playbook.
  - `variables/main.yaml`: Variables used in Ansible playbooks.

- `terraform/`: Contains Terraform configurations organized into several modules and examples.
  - `basic/`: Basic Terraform examples.
    - `main.tf`: A simple Terraform configuration demonstrating fundamental concepts.
  - `google-compute-instance/`: Terraform configuration to provision Google Cloud compute instances.
    - `main.tf`: Defines resources for a Google Compute Engine instance.
  - `long/`: More complex or extended Terraform configurations.
    - `main.tf`: Main Terraform configuration for extended examples.
  - `variables/`: Variable definitions for Terraform modules.
    - `main.tf`: Main variable configuration.
    - `variables.tf`: Additional variable definitions.

## Purpose

The purpose of this repository is to serve as a collection of infrastructural examples and configurations that demonstrate the use of Terraform and Ansible for provisioning and managing cloud and system resources.

## Usage

- Use the Ansible playbooks to automate system setup and configuration.
- Use Terraform configurations to provision cloud infrastructure, especially Google Cloud Compute Engine resources.

## Prerequisites

- Terraform installed (version compatible with the configs).
- Ansible installed for running playbooks.
- Proper cloud provider credentials set up (e.g., Google Cloud credentials for Google Compute Engine).

## Licensing

Please refer to the project licenses or contact the repository owner for specific licensing information.

