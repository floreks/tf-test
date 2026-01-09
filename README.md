# Infrastructure as Code with Terraform and Ansible

This project provides a collection of examples for managing infrastructure as code (IaC) using Terraform and Ansible.

## Project Structure

The project is organized into two main directories:

-   `terraform/`: Contains Terraform configurations for provisioning cloud infrastructure.
-   `ansible/`: Contains Ansible playbooks for configuring the provisioned infrastructure.

### Terraform

The `terraform/` directory includes the following examples:

-   `basic/`: A simple Terraform configuration.
-   `google-compute-instance/`: A Terraform configuration for creating a Google Compute Engine instance.
-   `long/`: A more complex Terraform configuration.
-   `variables/`: Examples of using Terraform variables.

### Ansible

The `ansible/` directory includes the following examples:

-   `basic/`: A basic Ansible playbook.
-   `variables/`: An example of using Ansible variables.

## Getting Started

To use these examples, you will need to have Terraform and Ansible installed.

### Terraform

1.  Navigate to the desired Terraform example directory (e.g., `cd terraform/google-compute-instance`).
2.  Initialize Terraform: `terraform init`
3.  Review the execution plan: `terraform plan`
4.  Apply the configuration: `terraform apply`

### Ansible

1.  Navigate to the desired Ansible example directory (e.g., `cd ansible/basic`).
2.  Run the playbook: `ansible-playbook main.yaml`