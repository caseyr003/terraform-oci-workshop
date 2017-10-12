variable "tenancy_ocid" {}
variable "compartment_ocid" {}
variable "subnet_ocid" {}
variable "ssh_public_key"{}
variable "instance_shape"{default= "VM.Standard1.16"}
variable "image_ocid" {default = "ocid1.image.oc1.phx.aaaaaaaa7jvfm572d4ehcgh3ijapvhrt52voel33ispumnygi3kl7mph55ha"}
variable "instance_name"{}
#variable "AD" {}
variable "MEAN_STACK" {
	default = "./userdata/meanstack.sh"
}

variable "instance_count" {}
variable "subnets" {}
