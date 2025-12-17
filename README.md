# Infrastructure Code Examples

This repository contains a collection of basic **Terraform** and **Ansible** examples, likely used for testing infrastructure provisioning workflows and learning.

## Structure

### Ansible
Located in `ansible/`.
*   **basic**: A simple playbook running on localhost to test connectivity (ping) and debug messages.
*   **variables**: Demonstrates using variables in Ansible playbooks.

### Terraform
Located in `terraform/`.
*   **basic**: Generates a random string and echoes it using `local-exec`.
*   **variables**: Similar to basic, but parameterized to demonstrate variable usage.
*   **google-compute-instance**: Provisions a Google Compute Engine instance with a service account.
*   **long**: Simulates a long-running process by generating multiple random strings and sleeping.