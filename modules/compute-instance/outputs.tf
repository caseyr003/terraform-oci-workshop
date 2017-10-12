#output "public_ip" {
#value = "${data.oci_core_vnic.InstanceVnic.public_ip_address}"
#}

#output "private_ip" {
#value = "${data.oci_core_vnic.InstanceVnic.private_ip_address}"
#}

output "items_comma" {
  value = "${join(",", oci_core_instance.compute_instance.*.public_ip)}"
}
