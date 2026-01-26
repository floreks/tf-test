# Terraform & Ansible Test Stack

A small, self‑contained repository showcasing basic Terraform modules and Ansible playbooks for quick testing and demonstrations.

The goal is to provide copy‑pasteable examples you can run locally to validate tooling, CI, or cloud credentials.

## Repository structure

- terraform/
  - basic/ — prints a short random string via null_resource
  - variables/ — demonstrates input variables and templated commands
  - long/ — parallel random strings with sensitive/standard outputs
  - once/ — runs a one‑time null_resource with a simple output
  - google-compute-instance/ — minimal GCP service account + VM example
- ansible/
  - basic/ — ping localhost and print a message
  - variables/ — demonstrate templated debug message

## Prerequisites

- Terraform >= 1.3
- Ansible >= 2.12
- For the GCP example:
  - A GCP project ID with permissions to create service accounts and compute instances
  - Application Default Credentials (ADC) or service account key available to the environment

## Quickstart: Terraform

From any module directory (e.g., terraform/basic):

```bash
terraform init
terraform apply -auto-approve
terraform output
```

To destroy:

```bash
terraform destroy -auto-approve
```

Notes for specific modules:

- variables/: supports inputs

  ```bash
  terraform apply -auto-approve \
    -var="random_string_length=8" \
    -var="random_string_upper=true" \
    -var="null_resource_command=echo"
  ```

- google-compute-instance/: requires GCP config

  Provide variables via a tfvars file or CLI flags:

  ```bash
  terraform apply -auto-approve \
    -var="project_id=YOUR_PROJECT" \
    -var="region=us-central1" \
    -var="zone=us-central1-a" \
    -var="service_account_id=test-stack-sa" \
    -var="instance_name=test-stack-vm" \
    -var="machine_type=e2-micro"
  ```

  Ensure credentials are available, for example:

  ```bash
  gcloud auth application-default login
  ```

## Quickstart: Ansible

From an Ansible directory (e.g., ansible/basic):

```bash
ansible-playbook -i localhost, -c local main.yaml
```

For variables example:

```bash
ansible-playbook -i localhost, -c local main.yaml -e debug_message="Hello from vars"
```

## Development workflow

- Keep modules/playbooks minimal and runnable in isolation
- Prefer explicit variable inputs and clear outputs
- Validate with terraform fmt/validate and ansible-lint where applicable

## Troubleshooting

- Terraform init/auth errors on GCP example: ensure ADC is set and the project/region/zone exist
- Ansible localhost execution issues: include "-i localhost, -c local" to target the local host

## License

This repository is provided for testing and example purposes. Use at your own risk.
