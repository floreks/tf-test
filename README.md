# tf-test

Small, self-contained Terraform and Ansible examples for quick testing.

- Terraform examples live in `terraform/`
- Ansible playbooks live in `ansible/`

Use these snippets to validate tooling, runners, and integrations (e.g., CI/CD, execution engines), without touching production resources unless you explicitly run the GCP example.

## Repository layout

```
ansible/
  basic/            # ping + debug
  variables/        # uses --extra-vars
terraform/
  basic/            # random_string + local-exec echo
  variables/        # same as basic, but driven by input variables
  long/             # larger fan-out; many resources and slower local-exec
  google-compute-instance/  # creates a GCE VM and a service account (costs!)
```

## Prerequisites

- Terraform 1.4+ (any recent 1.x is fine)
- Ansible 2.14+
- For the GCP example:
  - A Google Cloud project and billing enabled
  - Application Default Credentials (ADC) set (see below)

## Terraform quick start

All commands below are run from the example subdirectory.

### 1) Basic

```
cd terraform/basic
terraform init
terraform apply -auto-approve
# prints a short random string via local-exec
terraform destroy -auto-approve
```

### 2) Variables

Inputs are defined in `terraform/variables/variables.tf`.

Defaults:
- random_string_length = 5
- random_string_upper = false
- random_string_special = false
- null_resource_command = "echo"

Run with overrides:
```
cd terraform/variables
terraform init
terraform apply -auto-approve \
  -var random_string_length=8 \
  -var random_string_upper=true \
  -var null_resource_command="printf"
terraform destroy -auto-approve
```

### 3) Long

Creates many `random_string` resources and prints them with a small delay.
Useful for testing streaming logs and long-running plans/applies.

```
cd terraform/long
terraform init
terraform apply -auto-approve
terraform destroy -auto-approve
```

### 4) Google Compute Engine instance (GCP)

Creates a service account and a single GCE VM. This incurs costs. Destroy when done.

Authentication (choose one):
- Export a service account JSON key:
  ```bash
  export GOOGLE_APPLICATION_CREDENTIALS="/absolute/path/to/key.json"
  ```
- Or use user credentials:
  ```bash
  gcloud auth application-default login
  ```

Required inputs (set via `-var` or a `terraform.tfvars`):
- project_id
- region
- zone
- instance_name
- machine_type (e.g., e2-micro)
- service_account_id (ID, not email)

Example:
```
cd terraform/google-compute-instance
terraform init
terraform apply -auto-approve \
  -var project_id="my-project" \
  -var region="us-central1" \
  -var zone="us-central1-a" \
  -var instance_name="tf-test-vm" \
  -var machine_type="e2-micro" \
  -var service_account_id="tf-test-sa"
terraform destroy -auto-approve
```

## Ansible quick start

Run locally against `localhost`.

### 1) Basic
```
cd ansible/basic
ansible-playbook -i localhost, -c local main.yaml
```

### 2) Variables
```
cd ansible/variables
ansible-playbook -i localhost, -c local main.yaml --extra-vars 'debug_message="Hello from Ansible"'
```

## Notes

- Always review what will be created before applying, especially in cloud provider examples.
- The GCP example sets simple metadata and startup script; adjust to your needs before real usage.

