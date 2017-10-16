variable "tenancy_ocid" {}
variable "compartment_ocid" {}
variable "ssh_private_key_path" {
  default="userdata/keys/rsa-key-MEAN.ssh"
}
variable "mean-stack-public-ip" {}
variable "instance_count" {}
