output "gce_template_name" {
  value = google_compute_instance_template.gce_template.name
}

output "gce_template_id" {
  value = google_compute_instance_template.gce_template.id
}
