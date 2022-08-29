locals {
  env = element(split("-", var.subnet), 0)
}

resource "google_compute_instance_template" "gce_template" {
  name        = "${local.env}-vm-template"
  description = "This template is used to create server instances"
  project     = var.project
  region      = "us-central1"

  labels = {
    "env" = "dev"
  }

  instance_description = "template creation for MIG"
  machine_type         = "f1-micro"

  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
  }

  disk {
    source_image = "debian-cloud/debian-11"
    disk_type    = "pd-standard"
    disk_size_gb = 15
    auto_delete  = true
    boot         = true
  }

  network_interface {
    #network = var.vpc
    subnetwork = var.subnet
  }

  service_account {
    email  = var.email
    scopes = ["cloud-platform"]
  }

  tags = ["dev-vm-server"]
}
