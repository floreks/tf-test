    project_id         = "my-gcp-project"
    region             = "us-central1"
    zone               = "us-central1-a"
    instance_name      = "iac-example"
    machine_type       = "e2-micro"
    service_account_id = "iac-example-sa"
    EOF

    # Ensure required APIs are enabled once per project:
    gcloud services enable compute.googleapis.com iam.googleapis.com

    terraform init
    terraform apply

    # Cleanup to avoid charges
    terraform destroy
    
