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
  subnet  = module.vpc.subnet
}

module "gce_vm" {
  source  = "../../modules/gce_vm"
  project = var.project_id
  subnet  = module.vpc.subnet
}
