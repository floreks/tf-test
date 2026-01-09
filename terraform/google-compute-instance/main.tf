# This Terraform configuration provisions a Google Compute Engine (GCE) instance.

# The "google" provider configures the connection to Google Cloud Platform.
provider "google" {
  project     = var.project_id
  region      = var.region
}

# The "google_service_account" resource creates a new service account for the GCE instance.
resource "google_service_account" "default" {
  account_id   = var.service_account_id
  display_name = "Test Infrastructure Stack SA"
  project      = var.project_id
}

# The "google_compute_instance" resource creates a new GCE instance.
resource "google_compute_instance" "default" {
  name         = var.instance_name
  project      = var.project_id
  machine_type = var.machine_type
  zone         = var.zone

  # Tags are used to identify and organize the GCE instance.
  tags = ["floreks", "infrastructure-stack", "test"]

  # The "boot_disk" block configures the boot disk for the instance.
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  # The "network_interface" block configures the network interface for the instance.
  network_interface {
    network = "default"
  }

  # The "metadata" block sets custom metadata for the instance.
  metadata = {
    owner = "floreks"
    managed-by : "plural"
  }

  # The "metadata_startup_script" runs a script when the instance starts.
  metadata_startup_script = "echo hi > /test.txt"

  # The "service_account" block attaches the previously created service account to the instance.
  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}