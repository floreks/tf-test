# Infrastructure examples (Ansible + Terraform)

This repository contains small, runnable examples for Ansible playbooks and Terraform configurations. They are meant for local experimentation, demos, and CI exercises.

## Repository layout

- ansible/
  - basic/main.yaml — pings localhost and prints a message
  - variables/main.yaml — prints a message from a variable (debug_message)
- terraform/
  - basic/main.tf — generates a random string and echoes it locally
  - variables/
    - main.tf — random string and local-exec using variables
    - variables.tf — variable definitions with defaults
  - long/main.tf — creates many random strings and prints them with delays
  - google-compute-instance/main.tf — minimal GCE VM example (requires GCP project/creds/variables)

## Prerequisites

- Ansible 2.9+
- Terraform 1.0+
- For the Google example:
  - Google Cloud project and credentials (Application Default Credentials or a service account key)
  - `GOOGLE_APPLICATION_CREDENTIALS` set to a JSON key, or run `gcloud auth application-default login`

## Ansible examples

Run against localhost (no inventory needed).

- Basic:
  ansible-playbook ansible/basic/main.yaml

- With variables:
  ansible-playbook ansible/variables/main.yaml -e debug_message="Hello from variable"

## Terraform examples

Each directory is independent. Initialize and apply inside it.

- Basic:
  cd terraform/basic
  terraform init
  terraform apply -auto-approve

- With variables (defaults provided):
  cd terraform/variables
  terraform init
  terraform apply -auto-approve

  You can override, for example:
  terraform apply -auto-approve -var "random_string_length=8" -var "null_resource_command='printf'"

- Long run (prints many values with delays):
  cd terraform/long
  terraform init
  terraform apply

- Google Compute Engine instance:
  cd terraform/google-compute-instance
  terraform init

  Supply required variables via a tfvars file or -var flags. Example terraform.tfvars:
  project_id        = "your-gcp-project"
  region            = "us-central1"
  zone              = "us-central1-a"
  service_account_id = "infra-stack-sa"
  instance_name     = "demo-instance"
  machine_type      = "e2-micro"

  Then:
  terraform apply -var-file=terraform.tfvars

  Ensure GCP credentials are available (see Prerequisites). This example creates:
  - a service account
  - a Debian 11 VM with tags, labels, metadata, and a simple startup script

### Destroying resources

For any Terraform example you ran:

  terraform destroy

## Notes

- All examples are minimal and intended for learning/testing.
- Adjust variables and provider credentials to your environment before real use.
