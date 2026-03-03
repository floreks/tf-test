provider "google" {
  project     = var.project_id
  region      = var.region
}

resource "google_service_account" "default" {
  account_id   = var.service_account_id
  display_name = "Test Infrastructure Stack SA"
  project      = var.project_id
}

resource "google_compute_instance" "default" {
  name         = var.instance_name
  project      = var.project_id
  machine_type = var.machine_type
  zone         = var.zone

  tags = var.tags

  boot_disk {
    initialize_params {
      image = var.boot_disk_image
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = var.network
  }

  metadata = var.metadata

  metadata_startup_script = var.metadata_startup_script

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}
