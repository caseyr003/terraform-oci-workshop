#Enter Your Tenancy OCID
export TF_VAR_tenancy_ocid="Enter Your Tenancy OCID Here"
#Enter Your Compartment OCID
export TF_VAR_compartment_ocid="Enter Your Compartment OCID Here"
#Enter Your User OCID
export TF_VAR_user_ocid="Enter Your User OCID Here"
#Enter Your Fingerprint
export TF_VAR_fingerprint="Enter Your User Fingerprint Here"
#Enter Your Region (Default: PHX)
export TF_VAR_region="us-phoenix-1"

#Below Variables Shouldn't Be Changed if Following the OCI Workshop
export TF_VAR_image_ocid="ocid1.image.oc1.phx.aaaaaaaa7jvfm572d4ehcgh3ijapvhrt52voel33ispumnygi3kl7mph55ha"
export TF_VAR_instance_shape="VM.Standard1.1"
export TF_VAR_private_key_path="userdata/keys/APIkey.pem"
export TF_VAR_ssh_public_key=$(cat userdata/keys/rsa-key-MEAN.pub)
export TF_VAR_ssh_authorized_private_key=$(cat userdata/keys/rsa-key-MEAN.ssh)
