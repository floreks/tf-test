# Configure the Google Cloud Provider
provider "google" {
  project     = var.project_id
  region      = var.region
}

# Create a Service Account for the GCE instance
resource "google_service_account" "default" {
  account_id   = var.service_account_id
  display_name = "Test Infrastructure Stack SA"
  project      = var.project_id
}

# Create a Google Compute Engine Instance
resource "google_compute_instance" "default" {
  name         = var.instance_name
  project      = var.project_id
  machine_type = var.machine_type
  zone         = var.zone

  tags = ["floreks", "infrastructure-stack", "test"]

  # Configure the boot disk using Debian 11
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  # Connect to the default network
  network_interface {
    network = "default"
  }

  # Add metadata for management
  metadata = {
    owner = "floreks"
    managed-by : "plural"
  }

  # Script to run on startup
  metadata_startup_script = "echo hi > /test.txt"

  # Attach the Service Account created above
  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}