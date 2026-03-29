# Google Compute Instance Configuration
# Provisions a GCE instance with a custom service account.

provider "google" {
  project     = var.project_id
  region      = var.region
}

# Create a dedicated service account for the instance
resource "google_service_account" "default" {
  account_id   = var.service_account_id
  display_name = "Test Infrastructure Stack SA"
  project      = var.project_id
}

# Create the Compute Engine instance
resource "google_compute_instance" "default" {
  name         = var.instance_name
  project      = var.project_id
  machine_type = var.machine_type
  zone         = var.zone

  tags = ["floreks", "infrastructure-stack", "test"]

  # Boot disk configuration
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "default"
  }

  metadata = {
    owner = "floreks"
    managed-by : "plural"
  }

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    # Associate the custom service account with the instance
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}