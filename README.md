# Infrastructure as Code (IaC) Examples

This repository contains a collection of examples for Infrastructure as Code (IaC) using Terraform and Ansible.

## Structure

The repository is divided into two main sections:

-   `ansible`: Contains Ansible playbooks.
-   `terraform`: Contains Terraform configurations.

### Ansible

The `ansible` directory includes the following examples:

-   `basic`: A simple Ansible playbook that pings the host and prints a "Hello world" message.
-   `variables`: An Ansible playbook that demonstrates the use of variables.

### Terraform

The `terraform` directory includes the following examples:

-   `basic`: A simple Terraform configuration that generates a random string and outputs it.
-   `google-compute-instance`: A Terraform configuration for creating a Google Compute Engine (GCE) instance.
-   `long`: A Terraform configuration that creates multiple random strings in a loop.
-   `variables`: A Terraform configuration that utilizes input variables to customize resource creation.

## Usage

To use these examples, you will need to have Terraform and/or Ansible installed on your system. Navigate to the specific example directory and follow the instructions for that tool.

For example, to run the `basic` Terraform example:

```bash
cd terraform/basic
terraform init
terraform apply
```