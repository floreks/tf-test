# Infrastructure as Code (IaC) Test Examples

This repository contains a collection of simple Ansible playbooks and Terraform configurations. These examples are intended for testing infrastructure setups, verifying tool functionality, and demonstrating basic usage patterns.

## Repository Structure

The repository is organized into two main directories based on the tool used:

### Ansible (`ansible/`)

Contains Ansible playbooks demonstrating basic tasks and variable handling.

- **`basic/`**: A simple playbook that pings localhost and prints a "Hello world" message.
- **`variables/`**: Demonstrates the use of variables within a playbook to print dynamic messages.

### Terraform (`terraform/`)

Contains Terraform configurations for various scenarios, from simple local resources to cloud infrastructure.

- **`basic/`**: Generates a random string and echoes it locally. Useful for verifying basic Terraform execution.
- **`google-compute-instance/`**: Configures a Google Compute Engine instance with specific machine types, labels, and metadata. *Note: Requires a Google Cloud Project ID.*
- **`long/`**: A test configuration that generates multiple random strings and includes a sleep command. This is useful for testing timeouts or long-running operations.
- **`variables/`**: Demonstrates how to define and use input variables to customize resource creation (e.g., controlling string length and case).

## Usage

These examples are designed to be run independently. Ensure you have the necessary tools (`ansible`, `terraform`) and cloud credentials (for GCE examples) configured in your environment.