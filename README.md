# tf-test

This repository provides minimal, illustrative examples for testing and demonstrating infrastructure-as-code concepts using both Ansible and Terraform.

## Repository Structure

- **ansible/**  
  Contains simple Ansible playbooks for local testing and demonstration:
  - `basic/main.yaml`: Pings localhost and prints a static message.
  - `variables/main.yaml`: Pings localhost and prints a message using a variable.

- **terraform/**  
  Contains several Terraform modules showcasing different features:
  - `basic/main.tf`: Generates a random string and prints it using a local-exec provisioner.
  - `google-compute-instance/main.tf`: Provisions a Google Compute Engine instance with a service account, metadata, and startup script.
  - `long/main.tf`: (Purpose inferred as a placeholder for longer-running or more complex operations.)
  - `variables/main.tf` and `variables/variables.tf`: Demonstrates variable usage, random string generation, and both sensitive and standard outputs.

## Intent

The primary intent of this repository is to serve as a testbed for:
- Validating basic Ansible and Terraform functionality.
- Demonstrating simple infrastructure automation patterns.
- Providing reference configurations for local or CI/CD testing.

## Usage

These examples are intended for experimentation and learning.  
You can run the Ansible playbooks with `ansible-playbook` and the Terraform modules with `terraform init` and `terraform apply` in their respective directories.
