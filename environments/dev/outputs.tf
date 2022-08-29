output "vpc_network_name" {
  value = module.vpc.vpc_network_name
}

output "vpc_network_id" {
  value = module.vpc.vpc_network_id
}

output "vpc_subnetwork_name" {
  value = module.vpc.vpc_subnetwork_name
}

output "vpc_subnetwork_id" {
  value = module.vpc.vpc_subnetwork_id
}

output "firewall_rule" {
  value = module.firewall.firewall_rule
}

output "gce_template" {
  value = module.gce_template.gce_template_name
}

output "gce_template_server" {
  value = module.gce_template_server.gce_mig_name
}

output "gce_mig" {
  value = module.gce_mig.gce_mig_name
}


/* output "network" {
  value = module.vpc.network
}

output "subnet" {
  value = module.vpc.subnet
}

output "firewall_rule" {
  value = module.firewall.firewall_rule
}

output "instance_name" {
  value = module.gce_vm.instance_name
}

output "external_ip" {
  value = module.gce_vm.external_ip
} */
