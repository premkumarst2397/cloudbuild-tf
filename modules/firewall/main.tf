locals {
  network = element(split("-", var.vpc), 0)
}

resource "google_compute_firewall" "allow-http" {
  name    = "${local.network}-allow-http"
  network = var.vpc
  project = var.project

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  target_tags   = ["dev-vm-server"]
  source_ranges = ["0.0.0.0/0"]
}
