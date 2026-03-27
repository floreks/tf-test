# tf-test

A small collection of minimal Terraform and Ansible examples you can use to learn, demo, or sanity‑check tooling.

## Contents

- Terraform examples in `terraform/`
  - `basic/` — prints a random string locally via a null_resource
  - `variables/` — same as basic but parameterized via input variables
  - `long/` — larger looping example emitting many values with a delay
  - `google-compute-instance/` — provisions a GCE VM and a service account (requires GCP credentials and billing)
- Ansible playbooks in `ansible/`
  - `basic/main.yaml` — ping + hello world
  - `variables/main.yaml` — demonstrates passing variables

## Prerequisites

- Terraform >= 1.0
- Ansible >= 2.12
- For the GCP example: authenticated gcloud/ADC with a project that has Compute Engine API enabled and billing active.

## Quick start

### Terraform

From the repository root, pick an example and run:

```bash
cd terraform/basic
terraform init
terraform plan
terraform apply -auto-approve
terraform destroy -auto-approve
```

Variables example:

```bash
cd terraform/variables
terraform init
# Option A: pass variables on the CLI
terraform apply -auto-approve \
  -var="random_string_length=8" \
  -var="null_resource_command=echo"
# Option B: environment variables (TF_VAR_*)
export TF_VAR_random_string_length=8
export TF_VAR_null_resource_command=echo
terraform apply -auto-approve
```

Long running example (produces many strings with a short delay):

```bash
cd terraform/long
terraform init && terraform apply -auto-approve
# When finished
terraform destroy -auto-approve
```

Google Compute Engine example (requires GCP setup):

```bash
cd terraform/google-compute-instance
terraform init
# Provide required variables for your project/region/zone, e.g.:
terraform apply -auto-approve \
  -var="project_id=<your-project-id>" \
  -var="region=<your-region>" \
  -var="zone=<your-zone>" \
  -var="service_account_id=test-sa" \
  -var="instance_name=test-vm" \
  -var="machine_type=e2-micro"
# Cleanup
terraform destroy -auto-approve
```

> Note: The GCP example uses default VPC and a Debian 11 image. Ensure you are authenticated, e.g. `gcloud auth application-default login`.

### Ansible

Run the basic playbook:

```bash
ansible-playbook ansible/basic/main.yaml -i localhost,
```

Run the variables playbook, passing a variable on the CLI:

```bash
ansible-playbook ansible/variables/main.yaml -i localhost, \
  --extra-vars 'debug_message=Hello from Ansible'
```

## Repository structure

```
.
├── ansible
│   ├── basic/
│   └── variables/
└── terraform
    ├── basic/
    ├── variables/
    ├── long/
    └── google-compute-instance/
```

## Notes

- These examples are intentionally minimal and safe to run locally (except the GCP example which creates real cloud resources and may incur costs).
- No explicit license is provided in this repository. Add one if you plan to reuse this code.

## Contributing

Feel free to open issues or PRs to improve examples, docs, or add new scenarios.
