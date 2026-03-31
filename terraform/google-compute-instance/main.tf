# Configures the Google Cloud provider.
provider "google" {
  project     = var.project_id
  region      = var.region
}

# Creates a Google Service Account.
resource "google_service_account" "default" {
  account_id   = var.service_account_id
  display_name = "Test Infrastructure Stack SA"
  project      = var.project_id
}

# Creates a Google Compute Engine instance.
resource "google_compute_instance" "default" {
  name         = var.instance_name
  project      = var.project_id
  machine_type = var.machine_type
  zone         = var.zone

  tags = ["floreks", "infrastructure-stack", "test"]

  # Configures the boot disk for the instance.
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  # Configures the network interface for the instance.
  network_interface {
    network = "default"
  }

  # Adds metadata to the instance.
  metadata = {
    owner = "floreks"
    managed-by : "plural"
  }

  # Executes a startup script when the instance is created.
  metadata_startup_script = "echo hi > /test.txt"

  # Assigns a service account to the instance.
  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}