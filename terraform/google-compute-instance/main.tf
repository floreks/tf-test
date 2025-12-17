# Configure the Google Cloud provider
provider "google" {
  project     = var.project_id
  region      = var.region
}

# Create a Service Account
resource "google_service_account" "default" {
  account_id   = var.service_account_id
  display_name = "Test Infrastructure Stack SA"
  project      = var.project_id
}

# Provision a Google Compute Engine instance
resource "google_compute_instance" "default" {
  name         = var.instance_name
  project      = var.project_id
  machine_type = var.machine_type
  zone         = var.zone

  tags = ["floreks", "infrastructure-stack", "test"]

  # Boot disk configuration using Debian 11 image
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  # Use default network interface
  network_interface {
    network = "default"
  }

  metadata = {
    owner = "floreks"
    managed-by : "plural"
  }

  # Startup script to run on boot
  metadata_startup_script = "echo hi > /test.txt"

  # Attach the service account to the instance
  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}