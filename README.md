# Terraform and Ansible Examples

This repository contains small, self‑contained Infrastructure‑as‑Code examples using:

- Terraform (under `terraform/`) to provision cloud and local resources
- Ansible (under `ansible/`) to run simple configuration tasks

Use these examples to experiment locally, learn the tools, or as starting points for your own projects.


## Repository layout

- `terraform/`
  - `basic/` — minimal Terraform example printing a random string
  - `variables/` — same as basic, but parameters are exposed as variables
  - `long/` — runs a larger plan that prints many values with delays (useful for testing output/streaming)
  - `google-compute-instance/` — creates a GCE instance and a service account (requires GCP credentials)
- `ansible/`
  - `basic/` — pings localhost and prints a message
  - `variables/` — demonstrates passing variables into a playbook


## Prerequisites

- Terraform 1.3+ (https://developer.hashicorp.com/terraform/downloads)
- Ansible 2.14+ (https://docs.ansible.com/)
- A POSIX shell (macOS/Linux or WSL on Windows)
- For the Google example:
  - An existing GCP project and permission to create resources
  - Application Default Credentials or a service account key with appropriate IAM permissions
    - Export `GOOGLE_APPLICATION_CREDENTIALS=/path/to/key.json` (or login via `gcloud auth application-default login`)


## Quick start: Terraform

All Terraform examples are independent. From the repo root, change directory into any example and run the usual init/plan/apply workflow.

### Basic

```bash
cd terraform/basic
terraform init
terraform plan
terraform apply # then `terraform destroy` when finished
```

### Variables example

```bash
cd terraform/variables
terraform init
# Option A: pass variables on the command line
terraform apply -var "random_string_length=8" -var "null_resource_command=printf"
# Option B: use a tfvars file
cat > terraform.tfvars <<'VARS'
random_string_length = 8
random_string_upper  = false
random_string_special = false
null_resource_command = "printf"
VARS
terraform apply
```

### Long example (larger output)

Produces many random strings and prints them with a small delay; useful for testing streaming/logging.

```bash
cd terraform/long
terraform init
terraform apply
# Destroy when done
terraform destroy
```

### Google Compute Engine instance (GCP)

This example creates a service account and a single GCE instance. You must provide values for the variables below and have credentials set up.

Create a `terraform.tfvars` in `terraform/google-compute-instance/`:

```hcl
project_id         = "my-gcp-project"
region             = "us-central1"
zone               = "us-central1-a"
service_account_id = "infra-stack-sa"
instance_name      = "infra-stack-vm"
machine_type       = "e2-micro"
```

Then run:

```bash
cd terraform/google-compute-instance
terraform init
terraform plan
terraform apply
# Destroy when done
terraform destroy
```

> Note: Authentication typically uses the environment variable `GOOGLE_APPLICATION_CREDENTIALS` pointing to a JSON key, or Application Default Credentials via `gcloud`.


## Quick start: Ansible

Playbooks target `localhost` by default in these examples.

### Basic

```bash
ansible-playbook ansible/basic/main.yaml
```

### With variables

```bash
# Pass a variable on the command line
ansible-playbook ansible/variables/main.yaml -e 'debug_message=Hello from Ansible'

# Or create a vars file
cat > vars.yaml <<'VARS'
debug_message: Hello from vars file
VARS
ansible-playbook ansible/variables/main.yaml -e @vars.yaml
```


## Project tree

```
.
├── ansible
│   ├── basic
│   │   └── main.yaml
│   └── variables
│       └── main.yaml
├── terraform
│   ├── basic
│   │   └── main.tf
│   ├── google-compute-instance
│   │   └── main.tf
│   ├── long
│   │   └── main.tf
│   └── variables
│       ├── main.tf
│       └── variables.tf
├── .gitignore
└── README.md
```


## Tips

- Always review the plan carefully before applying.
- Prefer `terraform.tfvars` or environment variables to keep CLI invocations simple.
- Clean up resources when finished: `terraform destroy`.
- Never commit secrets (e.g., cloud keys). Use environment variables or a secure secrets manager instead.


## Contributing

Feel free to open issues or pull requests with improvements, fixes, or additional examples.

