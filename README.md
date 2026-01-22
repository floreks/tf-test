# tf-test

Infrastructure as Code samples demonstrating Terraform modules and Ansible playbooks for quick testing and experimentation.

## Repository structure

- terraform/
  - basic/: minimal random string + local-exec output
  - variables/: parameterized version of basic using variables.tf
  - once/: a one-time null_resource run example
  - long/: concurrent random strings with local-exec and outputs (incl. sensitive)
  - google-compute-instance/: sample GCP compute instance and service account
- ansible/
  - basic/main.yaml: ping and hello world debug
  - variables/main.yaml: uses a variable `debug_message`

## Prerequisites

- Terraform installed (v1.0+ recommended)
- Ansible installed (v2.10+ recommended)
- For GCP example: authenticated gcloud/ADC with a project available

## Quickstart

Terraform basic

1. cd terraform/basic
2. terraform init
3. terraform plan
4. terraform apply

Terraform with variables

1. cd terraform/variables
2. terraform init
3. Optionally set variables via -var flags or tfvars
4. terraform apply

Run one-time example

1. cd terraform/once
2. terraform init && terraform apply

Run long example

1. cd terraform/long
2. terraform init && terraform apply

GCP compute instance

1. cd terraform/google-compute-instance
2. Ensure application default credentials are set and export required variables:
   - TF_VAR_project_id, TF_VAR_region, TF_VAR_zone, TF_VAR_service_account_id, TF_VAR_instance_name, TF_VAR_machine_type
3. terraform init && terraform apply

Ansible basic playbook

1. ansible-playbook ansible/basic/main.yaml -i localhost,

Ansible with variables

1. ansible-playbook ansible/variables/main.yaml -i localhost, -e debug_message="Hello from variable"

## Working with environments

- Use separate workspaces or directories per environment for Terraform
- Store secrets securely (do not commit credentials)

## Contributing

Small examples are welcome. Keep modules/playbooks minimal and documented.

## License

Add an appropriate license for your use case.
