provider "google" {
  project     = var.project_id
  region      = var.region
}

# Create a Service Account for the VM
resource "google_service_account" "default" {
  account_id   = var.service_account_id
  display_name = "Test Infrastructure Stack SA"
  project      = var.project_id
}

# Create a Google Compute Engine instance
resource "google_compute_instance" "default" {
  name         = var.instance_name
  project      = var.project_id
  machine_type = var.machine_type
  zone         = var.zone

  tags = ["floreks", "infrastructure-stack", "test"]

  # Configure the boot disk
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  # Use default network
  network_interface {
    network = "default"
  }

  metadata = {
    owner = "floreks"
    managed-by : "plural"
  }

  # Simple startup script
  metadata_startup_script = "echo hi > /test.txt"

  # Attach the service account with cloud-platform scope
  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}