# tf-test

A collection of test configurations and playbooks for Infrastructure as Code (IaC) verification and integration testing. This repository contains both Ansible playbooks and Terraform configurations of varying complexity.

## Directory Structure

```text
/shared/repository/
├── ansible/
│   ├── basic/
│   │   └── main.yaml          # Standard localhost ping and hello world playbook
│   └── variables/
│       └── main.yaml          # Parametrized playbook using debug_message variable
└── terraform/
    ├── basic/
    │   └── main.tf            # Simple random string generator and local-exec print
    ├── google-compute-instance/
    │   └── main.tf            # GCE instance provisioner with custom metadata and SA
    ├── long/
    │   └── main.tf            # Simulates long-running, parallel/sequential executions
    ├── once/
    │   └── main.tf            # A null_resource run with empty triggers that executes once
    └── variables/
        ├── main.tf            # Parametrized random string & local-exec setup
        └── variables.tf       # Parameter declarations for customization
```

## Ansible Playbooks

### Basic Playbook (`ansible/basic`)
A minimal playbook that runs on `localhost` to verify Ansible setup, pinging hosts and printing `Hello world`.

### Variables Playbook (`ansible/variables`)
A playbook demonstrating variable passing, outputting a dynamic message defined in `debug_message`.

## Terraform Configurations

### Basic (`terraform/basic`)
Generates a random 5-character lowercase string and echoes it back in a `local-exec` block.

### Google Compute Instance (`terraform/google-compute-instance`)
Provisions a Google Compute Engine VM instance in GCP with customized metadata, network configuration, and service account association.

### Long Running (`terraform/long`)
Iterates over a substantial set of inputs to simulate multi-step and long-running Terraform executions. Each resource performs a `local-exec` sleep of 5 seconds to provide realistic timing metrics.

### Once (`terraform/once`)
Uses a `null_resource` without triggers to ensure a particular task or script is run exactly once upon stack provision.

### Variables (`terraform/variables`)
A fully customizable Terraform stack allowing users to override random string parameters (length, casing, special characters) and specify custom local commands to execute.
