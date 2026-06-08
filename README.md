# tf-test

A test repository containing example Terraform and Ansible configurations for use with Plural infrastructure stacks.

## Structure

### Terraform

| Directory | Description |
|-----------|-------------|
| `terraform/basic/` | Basic example using `random_string` and `null_resource` with a local-exec provisioner |
| `terraform/variables/` | Same as `basic` but driven by input variables |
| `terraform/long/` | Demonstrates `for_each` over a set of strings with sensitive/standard outputs |
| `terraform/once/` | Null resource with empty triggers so it runs only once |
| `terraform/google-compute-instance/` | Google Compute Engine instance with a service account |

### Ansible

| Directory | Description |
|-----------|-------------|
| `ansible/basic/` | Simple playbook that pings localhost and prints "Hello world" |
| `ansible/variables/` | Same playbook but uses a `debug_message` variable |
