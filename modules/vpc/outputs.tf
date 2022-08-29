output "vpc_network_name" {
  value = google_compute_network.custom_vpc.name
}

output "vpc_network_id" {
  value = google_compute_network.custom_vpc.id
}

output "vpc_subnetwork_name" {
  value = google_compute_subnetwork.vpc_subnetwork.name
}

output "vpc_subnetwork_id" {
  value = google_compute_subnetwork.vpc_subnetwork.id
}
