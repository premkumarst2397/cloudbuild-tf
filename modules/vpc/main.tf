# To create a vpc

resource "google_compute_network" "custom_vpc" {
  name                    = "${var.env}-custom-vpc"
  auto_create_subnetworks = false
}

# To create subnetwork

resource "google_compute_subnetwork" "vpc_subnetwork" {
  name          = "${var.env}-subnetwork"
  description   = "Subnetwork for custome VPC"
  ip_cidr_range = "10.10.10.0/24"
  network       = google_compute_network.custom_vpc.self_link
  region        = "us-central1"
  project       = var.project
}


/* module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "3.3.0"

  project_id   = "${var.project}"
  network_name = "${var.env}"

  subnets = [
    {
      subnet_name   = "${var.env}-subnet-01"
      subnet_ip     = "10.${var.env == "dev" ? 10 : 20}.10.0/24"
      subnet_region = "us-west1"
    },
  ]

  secondary_ranges = {
    "${var.env}-subnet-01" = []
  }
} */
