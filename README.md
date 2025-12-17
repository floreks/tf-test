# Infrastructure Management Project

This project contains a collection of Terraform and Ansible scripts for managing infrastructure.

## Terraform

The Terraform scripts are used to provision and manage infrastructure resources.

-   `basic/main.tf`: Creates a random string and a null resource that prints the random string.
-   `google-compute-instance/main.tf`: Creates a Google Compute Engine instance.
-   `long/main.tf`: Creates multiple random strings and prints them.
-   `variables/main.tf`: Creates a random string with configurable length, upper and special characters.
-   `variables/variables.tf`: Defines the variables used in `variables/main.tf`.

## Ansible

The Ansible scripts are used to configure and manage software on the infrastructure.

-   `basic/main.yaml`: Pings hosts and prints a "Hello world" message.
-   `variables/main.yaml`: Pings hosts and prints a configurable message.