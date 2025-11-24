# tf-test

Terraform & Ansible example repository

This repository contains small example configurations for Terraform and Ansible intended to serve as a lightweight demo and starting point for infrastructure experiments.

Contents

- ansible/
  - basic/: A minimal Ansible playbook (localhost) demonstrating ping and debug tasks.
  - variables/: Example place for playbook variables (if used).

- terraform/
  - basic/: Minimal Terraform example that generates a random string and prints it as an output.
  - google-compute-instance/: Example Terraform configuration for creating a Google Compute Engine instance (example module/style).
  - long/: A longer Terraform example with separate variables declarations.
  - variables/: Shared Terraform variable files used by example configurations.

Getting started

Prerequisites

- Terraform (1.0+ recommended)
- Ansible (2.9+ recommended)
- For GCE examples: Google Cloud SDK (gcloud) and appropriate credentials

Using the Terraform examples

1. Change into the example directory you want to try, e.g.:

   cd terraform/basic

2. Initialize Terraform:

   terraform init

3. Review the plan and apply:

   terraform plan
   terraform apply

4. When finished, destroy resources:

   terraform destroy

Notes

- The terraform/basic example uses the random and null providers to show how outputs work without provisioning cloud resources.
- The google-compute-instance example is provided as an illustration. Review variable values and provider configuration before applying.

Using the Ansible examples

1. Run the basic playbook locally:

   ansible-playbook ansible/basic/main.yaml -c local

2. The playbook uses localhost and demonstrates a simple ping and a debug message. Adapt hosts and inventory as needed for real deployments.

Project layout and purpose

This repository is intentionally small and educational. Use it to learn basic workflows for Terraform and Ansible, or as a template to start small experiments.

Contributing

Contributions are welcome. Please open an issue or a pull request with proposed changes. Keep changes small and focused.

License

This project is provided under the MIT License. See LICENSE (not included) or add one if you intend to publish.

