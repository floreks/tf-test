# Infrastructure examples: Terraform and Ansible

This repository contains small, self‑contained examples used for testing and demonstration with Terraform and Ansible.

- Terraform examples live under `terraform/`
- Ansible playbooks live under `ansible/`

These examples are intentionally simple and run locally by default. The Google Cloud example requires valid GCP credentials.

## Repository structure

```
ansible/
  basic/
    main.yaml                 # Ping localhost and print a message
  variables/
    main.yaml                 # Reads a variable: debug_message

terraform/
  basic/
    main.tf                   # Random string + local-exec
  variables/
    main.tf                   # Same as basic but parameterized
    variables.tf              # Input variables for the module
  long/
    main.tf                   # Many resources; prints with delay
  google-compute-instance/
    main.tf                   # Simple GCE instance + service account
```

## Prerequisites

- Terraform (>= 1.3 recommended)
- Ansible (>= 2.14 recommended)
- For the Google example:
  - A Google Cloud project and permissions to create a service account and a VM
  - Application Default Credentials configured locally

Quick ways to satisfy GCP auth locally:

```
# Option A: gcloud CLI
brew install --cask google-cloud-sdk   # or your OS equivalent
gcloud auth application-default login

# Optionally set a default project
export GOOGLE_CLOUD_PROJECT="your-project-id"
```

Alternatively, set `GOOGLE_APPLICATION_CREDENTIALS` to a service account key JSON file.

---

## Terraform quickstart

All Terraform examples follow the same pattern:

```
cd terraform/<example>
terraform init
terraform apply
# When done
terraform destroy
```

- basic
  - Generates a short random string and prints it via a local-exec provisioner.
  - Output: `test`

- variables
  - Same as basic but parameterized. You can pass variables via `-var` or `terraform.tfvars`.
  - Example `terraform.tfvars`:
    ```
    random_string_length = 8
    random_string_upper  = false
    random_string_special = false
    null_resource_command = "echo"
    ```

- long
  - Creates many `random_string` resources and prints them with a small delay.
  - Shows both sensitive and non-sensitive outputs.

- google-compute-instance
  - Provisions a service account and a small Debian VM in a specified zone.
  - Requires GCP credentials (see Prerequisites).
  - Create a `terraform.tfvars` file with values for the required variables:
    ```
    project_id         = "your-project-id"
    region             = "us-central1"
    zone               = "us-central1-a"
    service_account_id = "infra-test-sa"
    instance_name      = "infra-test"
    machine_type       = "e2-micro"
    ```
  - Then run the usual `terraform init && terraform apply`.

Notes:
- These examples use local state by default. Run `terraform destroy` to clean up.
- The `google-compute-instance` example will incur GCP charges if left running.

## Ansible quickstart

These playbooks target `localhost` and require no inventory file.

- basic
  ```
  ansible-playbook ansible/basic/main.yaml
  ```

- variables
  ```
  ansible-playbook -e 'debug_message="Hello from Ansible vars"' ansible/variables/main.yaml
  ```

## Tips & troubleshooting

- Terraform
  - If `terraform init` fails, ensure you are in the correct example directory.
  - For GCP: confirm `gcloud auth application-default login` or `GOOGLE_APPLICATION_CREDENTIALS` is set.
- Ansible
  - Ensure Python is available on your system.

## Contributing

Small improvements are welcome. For larger changes, please open an issue or PR with context and the intended outcome.

## License

No license specified. Treat this repository as example code for learning and internal testing.

