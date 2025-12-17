# Plural Infrastructure Test Repository

This repository contains example infrastructure-as-code configurations using Ansible and Terraform. It is designed for testing and demonstration purposes.

## Repository Structure

The project is organized into two main directories:

-   `ansible/`: Contains Ansible playbooks.
-   `terraform/`: Contains Terraform configuration files.

## Ansible

The `ansible` directory contains sample playbooks:

-   `basic/main.yaml`: A simple playbook that pings the host and prints "Hello world".
-   `variables/main.yaml`: Demonstrates the usage of variables by printing a debug message.

To run these playbooks, you will need Ansible installed.

## Terraform

The `terraform` directory contains several examples:

-   `basic/`: Creates a random string resource and echoes it.
-   `google-compute-instance/`: Sets up a Google Compute Instance and Service Account.
-   `long/`: Generates multiple random strings and simulates a longer process with a sleep command.
-   `variables/`: Demonstrates the use of input variables to control resource creation.

To use these configurations, initialize Terraform in the respective directory:

```bash
cd terraform/basic
terraform init
terraform apply
```