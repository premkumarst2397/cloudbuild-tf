resource "google_compute_instance_group_manager" "gce_mig" {
  name               = "dev-mig-server"
  base_instance_name = "dev-mig"
  zone               = "us-central1-a"
  project            = var.project

  version {
    name              = "mig-v1"
    instance_template = var.template_id
  }

  target_size = 3

  wait_for_instances = true

  timeouts {
    create = "15m"
    update = "15m"
  }
}
