
module "elasticsearch-server" {
  source = "git::https://github.com/hernanku/infra-devops.git//terraform/vmware/vsphere/single-vm-cloud"
  vsphere_server_url = "10.23.1.11"
  vsphere_user       = "administrator@vsphere.local"
  vsphere_password   = var.vsphere_password
  vsphere_datacenter = "dc-east"
  vsphere_cluster    = "lab-cluster"
  vm_datastore = "vmData"
  vm_name            = "elasticsearch-server"
  vm_disk_size = 200
  vm_dns_search_domain = "labz.io"
  vm_domain = "labz.io"
  vm_ipv4_address = "10.23.1.20"
  vm_gateway = "10.23.1.1"
  vm_network     = "vmPub"
  vm_template    = "gold-templ-ubuntu22-cloudinit"
  vm_cpu         = 4
  vm_memory      = 16384
  vm_dns_server = "10.23.1.9"

}
