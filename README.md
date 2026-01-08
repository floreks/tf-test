# Infrastructure as Code (IaC) Examples

This repository contains examples of Infrastructure as Code using Ansible and Terraform. It is designed to demonstrate basic concepts, variable usage, and cloud resource provisioning.

## Project Structure

### Ansible
Located in `ansible/`, this directory contains simple playbooks to demonstrate Ansible core functionality.

- **basic**: A minimal playbook (`main.yaml`) that pings localhost and prints a debug message.
- **variables**: Demonstrates how to pass variables to a playbook. It prints a message defined in the `debug_message` variable.

### Terraform
Located in `terraform/`, this directory contains various Terraform configurations.

- **basic**: Generates a random string and echoes it using a local-exec provisioner.
- **google-compute-instance**: A more complex example that provisions a Google Compute Engine instance and a Service Account. *Note: This configuration requires input variables (e.g., project_id, zone).*
- **long**: Demonstrates dependencies and loops (for_each). It generates multiple random strings and echoes them with a delay.
- **variables**: Shows how to define and use input variables to control resource properties (random string length, case, etc.).

## Usage

Each directory typically contains a self-contained example. Refer to the specific files for details.