# tf-test

A small collection of Terraform and Ansible examples for testing, demos, and CI workflows. It includes simple modules that print values, variable handling examples, a longer-running Terraform example, a Google Cloud Compute Engine example, and a couple of minimal Ansible playbooks.

## Repository structure
- terraform/basic – Prints a random string using random_string and a local-exec.
- terraform/variables – Demonstrates passing variables (length/upper/special and a command for local-exec).
- terraform/long – Generates many random strings and prints them with delays (useful to test long running applies and streaming logs).
- terraform/google-compute-instance – Provisions a GCE instance and a service account (requires GCP credentials and project settings; costs may apply).
- ansible/basic – Pings localhost and prints “Hello world”.
- ansible/variables – Same as above but shows how to pass variables at runtime.

## Prerequisites
- Terraform 1.3+ (any recent 1.x should work)
- Ansible 2.14+ (any recent version should work)
- For the Google example:
  - A Google Cloud project with billing enabled
  - Credentials configured locally, for example via a service account JSON:
    - Save the key file and set the environment variable:
      - Linux/macOS: `export GOOGLE_APPLICATION_CREDENTIALS=/path/to/key.json`
      - Windows (Powershell): `$env:GOOGLE_APPLICATION_CREDENTIALS="C:\\path\\to\\key.json"`

## Using the Terraform examples
General workflow inside any terraform/* directory:

```
terraform init
terraform plan
terraform apply
# when done
terraform destroy
```

### terraform/basic
Outputs a short random string and echoes it locally.

```
cd terraform/basic
terraform init && terraform apply -auto-approve
terraform output
terraform destroy -auto-approve
```

### terraform/variables
Shows variable usage. You can pass variables on the CLI or via a tfvars file.

Example terraform.tfvars:

```
random_string_length = 8
random_string_upper  = false
random_string_special = false
null_resource_command = "echo"
```

Run:
```
cd terraform/variables
terraform init
terraform apply -var-file="terraform.tfvars"
```

### terraform/long
Runs many local-exec commands with delays to simulate long operations.

```
cd terraform/long
terraform init && terraform apply
# expect the apply to take some time
terraform destroy
```

### terraform/google-compute-instance (GCP)
Provisions a service account and a Compute Engine VM. Costs may apply—destroy when finished.

Required variables (example terraform.tfvars):
```
project_id          = "your-gcp-project-id"
region              = "us-central1"
zone                = "us-central1-a"
service_account_id  = "test-infra-stack-sa"
instance_name       = "infra-stack-test"
machine_type        = "e2-micro"
```

Run:
```
cd terraform/google-compute-instance
terraform init
terraform apply -var-file="terraform.tfvars"
# when done
terraform destroy -var-file="terraform.tfvars"
```

Notes:
- Ensure your credentials (GOOGLE_APPLICATION_CREDENTIALS) point to a key with permissions to create service accounts and compute instances in the project.
- Enabling necessary GCP APIs (e.g., Compute Engine API, IAM) may be required if not already enabled.

## Using the Ansible playbooks
Run from the repository root.

### ansible/basic
```
ansible-playbook ansible/basic/main.yaml
```

### ansible/variables
Pass a custom message via an extra var:
```
ansible-playbook ansible/variables/main.yaml -e 'debug_message=Hello from Ansible'
```

## Disclaimer
These examples are for demonstration and testing. Use at your own risk and be mindful of cloud costs. Always destroy resources you no longer need.

