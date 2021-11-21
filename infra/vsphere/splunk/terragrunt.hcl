terraform {
  # deploy using development branch
  // source = "git@github.com:hernanku/infra-devops.git//terraform/xenorchestra/terraform-vm?ref=develop"
  source = "/home/amin/dev-projects/infra-devops/terraform/vmware/vsphere//single-vm"
}

remote_state {
  backend = "local"
  config = {
    path = "${get_terragrunt_dir()}/terraform.tfstate"
  }
}

inputs = {
  vsphere_server_url = "10.0.0.25"
  vsphere_user       = "administrator@vsphere.local"
  vsphere_password   = ""
  vsphere_datacenter = "Datacenter"
  vsphere_cluster    = "Cluster"
  vm_datastore       = "vmData1"
  vm_name            = "splunk"
  // vm_count = 5
  vm_network     = "vmPublic"
  vm_template    = "base-centos8"
  vm_baseip      = "10.0.0"
  vm_ip_suffix   = "56"
  vm_netmask     = 24
  vm_gateway     = "10.0.0.1"
  vm_dns_servers = ["10.0.0.24"]
  vm_domain      = "labz.io"
  vm_cpu         = 1
  vm_memory      = 2048
}
