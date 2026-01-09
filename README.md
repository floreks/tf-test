# tf-test

tf-test is a small sample repository that collects example infrastructure-as-code and automation configurations using Terraform and Ansible. It is intended as a reference and starting point for provisioning cloud compute resources and demonstrating variable usage patterns.

Contents
--------
- ansible/: Example Ansible playbooks and variable organization
  - basic/main.yaml: A simple playbook demonstrating tasks and roles
  - variables/main.yaml: Example variable definitions used by playbooks

- terraform/: Multiple Terraform example modules and configurations
  - basic/main.tf: Minimal Terraform configuration demonstrating provider and simple resource
  - google-compute-instance/: Example Terraform config for provisioning a Google Compute Engine instance
  - long/: Example or larger Terraform configuration (multi-file/complex layout)
  - variables/: Shared variable definitions and examples

Prerequisites
-------------
- Terraform (recommended: v1.0+)
- Ansible (recommended: 2.9+)
- For Google Cloud examples: gcloud SDK installed and authenticated, and appropriate project and credentials configured
- Basic familiarity with Terraform and Ansible

Quick start — Terraform
-----------------------
1. Change to an example terraform directory, e.g.:

   cd /plural/repository/terraform/basic

2. Initialize Terraform:

   terraform init

3. Review the execution plan:

   terraform plan

4. Apply the plan (create resources):

   terraform apply

Notes:
- The google-compute-instance example may require provider configuration (project, region/zone) and credentials. Check terraform/variables for sample variable usage.

Quick start — Ansible
---------------------
1. Review the playbook in ansible/basic/main.yaml.

2. Run the playbook (example):

   ansible-playbook -i inventory ansible/basic/main.yaml

Notes:
- This repository does not include an inventory file. Create one or use dynamic inventory as appropriate for your environment.
- Adjust variables in ansible/variables/main.yaml as needed.

Repository layout and notes
--------------------------
- Files are intentionally small and focused on demonstration rather than production-ready automation.
- Use these examples as templates — customize providers, variables, and resources to match your environment.

Contributing
------------
Contributions are welcome. Please open issues or submit pull requests with clear descriptions of changes and motivation.

License
-------
MIT License — see LICENSE (if you add one) or treat as permissive sample code.

Author
------
Generated/maintained by repository contributors.

