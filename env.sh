#Enter Your Tenancy OCID
export TF_VAR_tenancy_ocid="Enter Your Tenancy OCID Here"
#Enter Your Compartment OCID
export TF_VAR_compartment_ocid="Enter Your Compartment OCID Here"
#Enter Your User OCID
export TF_VAR_user_ocid="Enter Your User OCID Here"
#Enter Your Region (Default: PHX)
export TF_VAR_region="us-phoenix-1"

#Below Variables Shouldn't Be Changed if Following the OCI Workshop
export TF_VAR_vm_image_ocid="ocid1.image.oc1.phx.aaaaaaaa7jvfm572d4ehcgh3ijapvhrt52voel33ispumnygi3kl7mph55ha"
export TF_VAR_shape="VM.Standard1.1"
export TF_VAR_fingerprint="0c:9a:f4:1b:b4:01:07:e0:ee:1f:0a:73:4c:84:ab:72"
export TF_VAR_private_key_path="userdata/oci_api_key.pem"
export TF_VAR_ssh_public_key=$(cat userdata/ssh_authorized_keys.pub)
export TF_VAR_ssh_authorized_private_keys=$(cat userdata/ssh_authorized_keys.pub)
