# Infrastructure as Code Examples (Ansible + Terraform)

This repository contains small, self-contained examples for Ansible playbooks and Terraform configurations. They are intended for learning, testing tooling, CI/CD pipelines, and demonstrating common patterns like variables and provider setup.

Use at your own risk. The Google Compute Engine example may create billable resources in your GCP project.

## Repository structure

```
ansible/
  basic/
    main.yaml                # Ping + debug on localhost
  variables/
    main.yaml                # Uses an external variable: debug_message

terraform/
  basic/
    main.tf                  # random_string + local-exec output
  variables/
    main.tf                  # same as basic but parameterized via variables.tf
    variables.tf             # variable definitions
  long/
    main.tf                  # generates many values and sleeps to simulate long runs
  google-compute-instance/
    main.tf                  # minimal GCE VM + service account (GCP)
```

## Prerequisites

- Ansible >= 2.12
- Terraform >= 1.3
- For the Google example (terraform/google-compute-instance):
  - A Google Cloud project with billing enabled
  - IAM permissions to create service accounts and Compute Engine instances
  - Authentication set up, e.g. with the gcloud CLI or a service account key file
    - If using a key file: export GOOGLE_APPLICATION_CREDENTIALS=/absolute/path/key.json
  - APIs enabled: compute.googleapis.com, iam.googleapis.com

## Quick start

Clone this repo and run examples from the repository root.

### Ansible examples

- Basic
  - Runs on localhost, pings and prints a message
  - Command:
    ```bash
    ansible-playbook ansible/basic/main.yaml
    ```

- Variables
  - Accepts a variable named debug_message
  - Commands:
    ```bash
    ansible-playbook -e "debug_message=Hello from Ansible" ansible/variables/main.yaml
    # or from a vars file
    ansible-playbook -e @myvars.yaml ansible/variables/main.yaml
    ```

### Terraform examples

General workflow for each Terraform example directory:

```bash
cd terraform/<example>
terraform init
terraform apply
# when done
terraform destroy
```

- basic
  - Generates a short random string and prints it via local-exec. Exposes output "test".
  - Example:
    ```bash
    cd terraform/basic
    terraform init && terraform apply -auto-approve
    terraform output test
    ```

- variables
  - Same as basic but parameters are configurable via variables.tf.
  - Variables:
    - random_string_length (number, default 5)
    - random_string_upper (bool, default false)
    - random_string_special (bool, default false)
    - null_resource_command (string, default "echo")
  - Examples:
    ```bash
    cd terraform/variables
    terraform init
    terraform apply -auto-approve \
      -var random_string_length=10 \
      -var random_string_upper=true \
      -var null_resource_command="echo Value:"

    # or place values in terraform.tfvars
    cat > terraform.tfvars <<'TFVARS'
    random_string_length   = 12
    random_string_upper    = false
    random_string_special  = false
    null_resource_command  = "echo Generated:"
    TFVARS
    terraform apply -auto-approve
    ```

- long
  - Creates many random strings and prints them, sleeping a few seconds per item.
  - Useful for exercising long plan/apply streams in CI tools.
  - Example:
    ```bash
    cd terraform/long
    terraform init && terraform apply
    # when done:
    terraform destroy
    ```

- google-compute-instance (GCP)
  - Provisions:
    - A service account
    - A single Compute Engine VM with Debian 11
  - Required variables:
    - project_id
    - region
    - zone
    - instance_name
    - machine_type (e.g. e2-micro)
    - service_account_id (string ID for the service account)
  - Auth: ensure GOOGLE_APPLICATION_CREDENTIALS is set or gcloud auth is active.
  - Example using terraform.tfvars:
    ```bash
    cd terraform/google-compute-instance
    cat > terraform.tfvars <<'TFVARS'
    project_id         = "my-gcp-project"
    region             = "us-central1"
    zone               = "us-central1-a"
    instance_name      = "iac-example"
    machine_type       = "e2-micro"
    service_account_id = "iac-example-sa"
    TFVARS

    # Ensure required APIs are enabled once per project:
    gcloud services enable compute.googleapis.com iam.googleapis.com

    terraform init
    terraform apply

    # Cleanup to avoid charges
    terraform destroy
    ```

## Notes and troubleshooting

- Terraform state: By default, state is local in each example directory. For team usage, configure a remote backend.
- Provider credentials: Examples assume credentials are available to the process (env vars, local auth). See provider docs for alternatives.
- Destructive operations: Always run terraform destroy when you are done, especially in cloud examples.
- Ansible inventory: Examples target hosts: localhost and use only builtin modules; no extra inventory is required.

---

If something looks off or you have suggestions, feel free to open an issue or PR.
