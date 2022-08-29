output "gce_mig_name" {
  value = google_compute_instance_group_manager.gce_mig.name
}

output "gce_mig_id" {
  value = google_compute_instance_group_manager.gce_mig.id
}
