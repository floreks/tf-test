# Infrastructure test fixtures

This repository contains small Terraform and Ansible fixtures used to verify
infrastructure execution behavior.

## Terraform

Each directory under `terraform/` is an independent root module. Initialize
and validate a fixture before running it:

```sh
terraform -chdir=terraform/basic init
terraform -chdir=terraform/basic validate
```

The available fixtures cover basic resources, variables, a long-running
fan-out, and a once-only stack run (`basic`, `variables`, `long`, and `once`).

## Ansible

Run a syntax check from the repository root. The variables fixture requires a
value for `debug_message`:

```sh
ansible-playbook --syntax-check ansible/basic/main.yaml
ansible-playbook --syntax-check ansible/variables/main.yaml -e debug_message=hello
```
