# Infrastructure as Code Examples

This repository contains a collection of Ansible playbooks and Terraform configurations demonstrating various Infrastructure as Code (IaC) concepts.

## Project Structure

### Ansible
Located in the `ansible/` directory.

- **`ansible/basic/`**: A simple playbook that pings localhost and prints "Hello world".
- **`ansible/variables/`**: Demonstrates the use of variables in Ansible playbooks.

### Terraform
Located in the `terraform/` directory.

- **`terraform/basic/`**: A basic example creating a random string and using `local-exec` to echo it.
- **`terraform/google-compute-instance/`**: Configures a Google Compute Engine instance and a Service Account, demonstrating provider usage and resource configuration.
- **`terraform/long/`**: A more complex example that generates multiple random strings and outputs them, demonstrating `for_each` and sensitive outputs.
- **`terraform/variables/`**: Shows how to define and use input variables to customize resource behavior (e.g., random string properties).