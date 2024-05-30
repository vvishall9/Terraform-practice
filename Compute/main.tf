resource "google_compute_instance" "default" {
  name         = "dev-test-vm2"
  machine_type = "n2-standard-2"
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  // Local SSD disk
  
  network_interface {
    network = "dev-sre-netrk"
    subnetwork = var.subnetwork

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email = "dev-sre-test@dev-sre-gce.iam.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
}