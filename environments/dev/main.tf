locals {
  env = "dev"
}

module "vpc" {
  source  = "../../modules/vpc"
  project = var.project_id
  env     = local.env
}

module "firewall" {
  source  = "../../modules/firewall"
  project = var.project_id
  vpc     = module.vpc.vpc_network_name
}

/* module "gce_vm" {
  source  = "../../modules/gce_vm"
  project = var.project_id
  subnet  = module.vpc.subnet
} */

module "gce_template" {
  source  = "../../modules/gce_template"
  project = var.project_id
  subnet  = module.vpc.vpc_subnetwork_name
  #subnet  = module.vpc.vpc_subnetwork_name
  email = var.service_account_id
}


module "gce_template_server" {
  source  = "../../modules/gce_template_server"
  project = var.project_id
  #vpc     = module.vpc.vpc_subnetwork_name
  #subnet  = module.vpc.vpc_subnetwork_name
  template = module.gce_template.gce_template_name
}

module "gce_mig" {
  source   = "../../modules/gce_mig"
  project  = var.project_id
  template_id = module.gce_template.gce_template_id
}
