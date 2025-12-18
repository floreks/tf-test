# Configure the Google Cloud provider with project and region from variables
provider "google" {
  project     = var.project_id
  region      = var.region
}

# Create a Google Service Account
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

  # Configure boot disk with Debian 11 image
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

  # Add custom metadata
  metadata = {
    owner = "floreks"
    managed-by : "plural"
  }

  # Script to run on instance startup
  metadata_startup_script = "echo hi > /test.txt"

  # Attach the service account created above
  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}