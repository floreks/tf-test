# tf-test

This repository contains a collection of basic Ansible playbooks and Terraform configurations for testing and demonstration purposes.

## Project Structure

### Ansible
Located in the `ansible/` directory:
- **basic:** A simple playbook (`main.yaml`) that pings localhost and prints a debug message.
- **variables:** Demonstrates the use of variables in Ansible playbooks.

### Terraform
Located in the `terraform/` directory:
- **basic:** A minimal configuration that generates a random string and echoes it using a `null_resource` local-exec provisioner.
- **google-compute-instance:** Configuration for provisioning a Google Compute Engine instance and a Service Account. *Note: Requires external variable definitions.*
- **long:** Simulates a long-running process by generating multiple random strings and echoing them with a delay.
- **variables:** Demonstrates the usage of input variables to customize resource properties (length, casing, etc.) for random string generation.

## Usage

These examples are intended to be run individually using standard `ansible-playbook` or `terraform` commands.