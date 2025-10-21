# tf-test

A small collection of example automation snippets using:
- Ansible playbooks (simple ping/debug and variables example)
- Terraform modules (random string demos, long-running example, and a Google Compute Engine instance)

## Repository layout

```
ansible/
  basic/
    main.yaml                # ping + debug
  variables/
    main.yaml                # uses a templated variable

terraform/
  basic/
    main.tf                  # prints a short random string
  long/
    main.tf                  # prints many strings with delays
  variables/
    main.tf                  # parameterized random string + local-exec
    variables.tf             # inputs with defaults
  google-compute-instance/
    main.tf                  # GCE instance + service account

.gitignore
README.md
```

## Prerequisites
- Terraform 1.0+
- Ansible 2.10+
- For Google examples: gcloud auth configured or GOOGLE_APPLICATION_CREDENTIALS set

## Ansible
Run the simple examples with ansible-playbook:

- Basic ping + debug
  ```bash
  ansible-playbook ansible/basic/main.yaml
  ```

- Variables example (pass a variable at runtime)
  ```bash
  ansible-playbook ansible/variables/main.yaml -e debug_message="Hello from vars"
  ```

## Terraform
Each subdirectory is an isolated example. Initialize and apply inside a directory.

- Basic random string
  ```bash
  cd terraform/basic
  terraform init
  terraform apply -auto-approve
  ```

- Long run with many strings (prints a lot, includes delays)
  ```bash
  cd terraform/long
  terraform init
  terraform apply -auto-approve
  ```

- Parameterized example (override defaults if desired)
  ```bash
  cd terraform/variables
  terraform init
  terraform apply -auto-approve \
    -var="random_string_length=8" \
    -var="null_resource_command=echo"
  ```

- Google Compute Engine instance
  Variables required: `project_id`, `region`, `zone`, `instance_name`, `machine_type`, `service_account_id`.
  ```bash
  cd terraform/google-compute-instance
  terraform init
  terraform apply -auto-approve \
    -var="project_id=YOUR_PROJECT" \
    -var="region=us-central1" \
    -var="zone=us-central1-a" \
    -var="instance_name=test-instance" \
    -var="machine_type=e2-micro" \
    -var="service_account_id=test-sa"
  ```
  Make sure your Google credentials are available to Terraform (e.g., `gcloud auth application-default login` or `GOOGLE_APPLICATION_CREDENTIALS`).

## Clean up
Destroy resources created by an example from the same directory:
```bash
terraform destroy -auto-approve
```

## Notes
- Examples use `random_string` and `null_resource` to demonstrate outputs and provisioning.
- The Ansible playbooks target `localhost` and are safe to run locally.
