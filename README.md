# Infrastructure as Code Examples

This repository contains a collection of Ansible playbooks and Terraform configurations to demonstrate various infrastructure as code (IaC) concepts.

## Ansible

The `ansible` directory contains the following playbooks:

- **basic**: A simple playbook that pings the localhost and prints a "Hello world" message. This is a good starting point for beginners to understand the basic structure of an Ansible playbook.
- **variables**: This playbook demonstrates the use of variables in Ansible. It prints a message using a variable that can be passed at runtime.

### Running the Ansible Playbooks

To run the playbooks, you need to have Ansible installed. You can then use the `ansible-playbook` command:

```bash
# Run the basic playbook
ansible-playbook ansible/basic/main.yaml

# Run the variables playbook with a custom message
ansible-playbook ansible/variables/main.yaml --extra-vars "debug_message='Hello from a variable!'"
```

## Terraform

The `terraform` directory contains the following configurations:

- **basic**: A simple configuration that generates a random string and prints it to the console. This example is useful for understanding the basic syntax of Terraform and how to use resources and outputs.
- **google-compute-instance**: This configuration demonstrates how to create a Google Compute Engine (GCE) instance. It includes the creation of a service account and a VM with a startup script.
- **long**: A more complex example that shows how to use loops (`for_each`) to create multiple resources. It generates a large number of random strings and prints them.
- **variables**: This configuration is a generic version of the `basic` example. It uses variables to customize the behavior, such as the length of the random string and the command to be executed.

### Running the Terraform Configurations

To run the Terraform configurations, you need to have Terraform installed and configured with your cloud provider credentials (for the `google-compute-instance` example).

For each configuration, you need to initialize Terraform, review the plan, and then apply the changes:

```bash
# Navigate to the desired configuration directory
cd terraform/basic

# Initialize Terraform
terraform init

# See what Terraform will do
terraform plan

# Apply the changes
terraform apply
```

For the `google-compute-instance` example, you will need to provide values for the required variables, such as `project_id`, `region`, etc. You can do this by creating a `terraform.tfvars` file or by passing the variables on the command line.