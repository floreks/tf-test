# Configure the Google Cloud provider with project and region from variables.
provider "google" {
  project     = var.project_id
  region      = var.region
}

# Create a service account for the test infrastructure stack.
resource "google_service_account" "default" {
  account_id   = var.service_account_id
  display_name = "Test Infrastructure Stack SA"
  project      = var.project_id
}

# Provision a Google Compute Instance with specific configuration.
resource "google_compute_instance" "default" {
  name         = var.instance_name
  project      = var.project_id
  machine_type = var.machine_type
  zone         = var.zone

  tags = ["floreks", "infrastructure-stack", "test"]

  # Boot disk configuration using Debian 11 image.
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  # Use the default network interface.
  network_interface {
    network = "default"
  }

  metadata = {
    owner = "floreks"
    managed-by : "plural"
  }

  # Simple startup script to create a test file.
  metadata_startup_script = "echo hi > /test.txt"

  # Attach the created service account to the instance.
  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}