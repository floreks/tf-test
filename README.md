# Infrastructure examples: Terraform and Ansible

This repository contains small, self‑contained examples for:
- Terraform (basic, variables, long‑running, and a GCP compute instance)
- Ansible (basic playbook and a variables demo)

Use these to quickly test tooling, pipelines, or to learn basics.

## Repository structure

- ansible/
  - basic/main.yaml — ping localhost and print a message
  - variables/main.yaml — expects a variable `debug_message`
- terraform/
  - basic/ — generates a random string and prints it
  - variables/ — same as basic but exposes config via variables
  - long/ — many resources + local‑exec with delays (good for timing/concurrency tests)
  - google-compute-instance/ — creates a GCP service account and a Compute Engine VM

## Prerequisites

- Terraform >= 1.3
- Ansible >= 2.14
- For the GCP example:
  - A GCP project with billing enabled and the Compute Engine + IAM APIs enabled
  - Authentication via one of:
    - `gcloud auth application-default login`, or
    - a service account key: `export GOOGLE_APPLICATION_CREDENTIALS=/path/to/key.json`

## Terraform

General workflow (run from inside a specific example directory):

```bash
terraform init
terraform apply
terraform output
# when done
terraform destroy
```

### 1) terraform/basic

Prints a short random string and exposes it as an output.

```bash
cd terraform/basic
terraform init
terraform apply -auto-approve
terraform output
```

### 2) terraform/variables

Same as basic, but configurable via variables:
- random_string_length (number, default 5)
- random_string_upper (bool, default false)
- random_string_special (bool, default false)
- null_resource_command (string, default "echo")

Examples:
```bash
cd terraform/variables
terraform init
terraform apply -auto-approve \
  -var 'random_string_length=8' \
  -var 'null_resource_command=printf'
```

### 3) terraform/long

Creates many resources and runs local-exec commands with `sleep` to simulate a longer apply.
Useful for testing timeouts and log streaming.

```bash
cd terraform/long
terraform init
terraform apply
# This may take a few minutes due to the sleeps.
```

### 4) terraform/google-compute-instance (GCP)

Creates a service account and a small Compute Engine instance with metadata and a startup script.
You must provide required variables. Create a `terraform.tfvars` file in the directory with values appropriate for your project:

```hcl
# terraform/google-compute-instance/terraform.tfvars
project_id       = "your-gcp-project-id"
region           = "us-central1"
zone             = "us-central1-a"
service_account_id = "tf-test-sa"
instance_name    = "tf-test-instance"
machine_type     = "e2-micro"
```

Then run:
```bash
cd terraform/google-compute-instance
# Ensure you are authenticated first (see Prerequisites)
terraform init
terraform apply
```

Note: Applying this example may incur cloud charges. Destroy when finished:
```bash
terraform destroy
```

## Ansible

### ansible/basic

A simple play that pings localhost and prints a message.
```bash
ansible-playbook ansible/basic/main.yaml
```

### ansible/variables

Demonstrates passing variables to a playbook.
```bash
ansible-playbook ansible/variables/main.yaml -e debug_message="Hello from variable"
```

---

If something looks off or you need an additional example, feel free to extend the repo.
