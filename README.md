# tf-test

A tiny repository with Terraform and Ansible examples used to test CI/CD pipelines, variable handling, long-running operations, and a simple Google Cloud example.

Use this repo to quickly verify infrastructure tooling, runners, or integrations.

## Repository layout

- terraform/
  - basic/ — minimal Terraform example that prints a random string
  - variables/ — demonstrates variables and local-exec
  - long/ — long-running example that prints many lines with delays
  - once/ — job that is designed to run only once (empty triggers)
  - google-compute-instance/ — creates a GCE VM and a service account
- ansible/
  - basic/ — simple ping + debug playbook
  - variables/ — playbook that echoes a provided variable

## Prerequisites

- Terraform 1.x
- Ansible 2.14+ (for the Ansible examples)
- Optional for the GCP example
  - gcloud CLI and an authenticated account (Application Default Credentials), or
  - a service account JSON pointed to by `GOOGLE_APPLICATION_CREDENTIALS`

Note: The Google Cloud example may incur costs. Always destroy resources when you are done.

## Terraform quickstart

General pattern:

1) Initialize providers
- terraform init

2) Apply
- terraform apply

3) Destroy when done
- terraform destroy

### basic

Minimal run that prints a random string.

- cd terraform/basic
- terraform init
- terraform apply -auto-approve

### variables

Shows variable usage with `random_string` and a local exec.

- cd terraform/variables
- terraform init
- terraform apply -auto-approve \
  -var="random_string_length=8" \
  -var="random_string_upper=true" \
  -var="random_string_special=false" \
  -var="null_resource_command=echo"

### long

Prints many lines with a delay to test log streaming and timeouts.

- cd terraform/long
- terraform init
- terraform apply -auto-approve

Outputs include both sensitive and non-sensitive lists for visibility testing.

### once

Runs a `null_resource` with empty triggers so it executes only once unless tainted.

- cd terraform/once
- terraform init
- terraform apply -auto-approve

### google-compute-instance (GCP)

Creates a service account and a Debian-based VM in the default VPC.

Required variables:

- project_id — your GCP project ID
- region — e.g. us-central1
- zone — e.g. us-central1-a
- machine_type — e.g. e2-micro
- instance_name — VM name
- service_account_id — ID for the service account to create (name only, without domain)

Example terraform.tfvars:

project_id         = "my-project"
region             = "us-central1"
zone               = "us-central1-a"
machine_type       = "e2-micro"
instance_name      = "tf-test-vm"
service_account_id = "tf-test-sa"

Run:

- cd terraform/google-compute-instance
- terraform init
- terraform apply -auto-approve

Destroy to avoid charges:

- terraform destroy -auto-approve

Authentication tips:

- gcloud auth application-default login
- Or export GOOGLE_APPLICATION_CREDENTIALS=/path/to/key.json

## Ansible quickstart

These playbooks target localhost.

### basic

- ansible-playbook ansible/basic/main.yaml

### variables

Pass a message via `-e`:

- ansible-playbook ansible/variables/main.yaml -e 'debug_message="Hello from Ansible"'

## Notes and safety

- Prefer using test or free-tier projects for the GCP example.
- Always run `terraform destroy` when finished.
- The examples are intentionally simple and are not production hardening guides.

## Contributing

Issues and small PRs are welcome. Keep examples minimal and easy to run.
