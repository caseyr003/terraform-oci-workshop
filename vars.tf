variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "compartment_ocid" {}
variable "ssh_public_key_path" {
  default="userdata/ssh_authorized_keys.pub"
}
variable "region" {}
variable "instance_count" {
  default="2"
}
variable "instance_shape" {}
variable "image_ocid" {}
