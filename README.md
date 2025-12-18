# tf-test

Minimal Terraform and Ansible examples for local testing, demos, and CI checks.

## Repository layout

```
.
├── ansible/
│   ├── basic/                # Ping + debug example
│   │   └── main.yaml
│   └── variables/            # Passing variables via -e
│       └── main.yaml
└── terraform/
    ├── basic/                # Random string + local-exec
    │   └── main.tf
    ├── variables/            # Same as basic, parameterized
    │   ├── main.tf
    │   └── variables.tf
    ├── long/                 # for_each + many outputs
    │   └── main.tf
    └── google-compute-instance/  # GCP VM + service account
        └── main.tf
```

## Prerequisites

- Terraform >= 1.3
- Ansible >= 2.12
- Optional (only for the GCP example):
  - Google Cloud project and credentials
  - Either run `gcloud auth application-default login` or set `GOOGLE_APPLICATION_CREDENTIALS` to a service account JSON key

## Terraform: quick start

Basic example:

```bash
cd terraform/basic
terraform init
terraform apply
# To remove: terraform destroy
```

Parameterized example with variables:

```bash
cd terraform/variables
terraform init
terraform apply \
  -var 'random_string_length=8' \
  -var 'random_string_upper=false' \
  -var 'random_string_special=false' \
  -var 'null_resource_command=printf'
```

Long example (many resources via for_each):

```bash
cd terraform/long
terraform init
terraform apply
```

Google Compute Engine VM example (GCP):

This directory references the following variables that must be provided at apply time: `project_id`, `region`, `zone`, `instance_name`, `machine_type`, `service_account_id`.

```bash
cd terraform/google-compute-instance
terraform init
terraform apply \
  -var 'project_id=YOUR_PROJECT_ID' \
  -var 'region=us-central1' \
  -var 'zone=us-central1-a' \
  -var 'instance_name=tf-test-vm' \
  -var 'machine_type=e2-micro' \
  -var 'service_account_id=tf-test-sa'
```

## Ansible: quick start

Basic playbook:

```bash
ansible-playbook ansible/basic/main.yaml
```

Playbook with variables:

```bash
ansible-playbook ansible/variables/main.yaml -e debug_message="Hello from Ansible"
```

---

Contributions and tweaks welcome via pull requests.
