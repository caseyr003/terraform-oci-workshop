module "vcn" {
  source = "./modules/vcn"
  tenancy_ocid = "${var.tenancy_ocid}"
  compartment_ocid = "${var.compartment_ocid}"
}

module "mean-stack" {
  #AD="1"
  source = "./modules/compute-instance"
  tenancy_ocid = "${var.tenancy_ocid}"
  subnet_ocid = "${module.vcn.subnet1_ocid}"
  compartment_ocid = "${var.compartment_ocid}"
  ssh_public_key = "${file(var.ssh_public_key_path)}"
  instance_name = "meanstack"
  subnets = "${module.vcn.subnet1_ocid},${module.vcn.subnet2_ocid}"
  instance_count = "2"
}

module "mean-stack-config" {
  source = "./modules/mean-stack-config"
  tenancy_ocid = "${var.tenancy_ocid}"
  compartment_ocid = "${var.compartment_ocid}"
  mean-stack-public-ip = "${module.mean-stack.items_comma}"
  instance_count = "2"
}

module "mean-stack-load-balancer" {
  source              = "./modules/loadbalancer"
  tenancy_ocid        = "${var.tenancy_ocid}"
  compartment_ocid    = "${var.compartment_ocid}"
  region              = "${var.region}"
  lb_subnet_1         = "${module.vcn.subnet1_ocid}"
  lb_subnet_2         = "${module.vcn.subnet2_ocid}"
  lb_shape            = "100Mbps"
  lb_backend_ip_count = "2"
  lb_backend_all_ip   = "${module.mean-stack.items_comma}"
}


output "MEAN Stack URL" {
  value = "http://${module.mean-stack-load-balancer.lb_public_ip}:8080"
}



