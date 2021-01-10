provider "esxi" {
  esxi_hostname = var.esxi_hostname
  esxi_hostport = var.esxi_hostport
  esxi_hostssl  = var.esxi_hostssl
  esxi_username = var.esxi_username
  esxi_password = var.esxi_password
}

resource "esxi_guest" "vmtest02" {
  guest_name         = "vmtest02"
  disk_store         = "datastore1"
  ovf_source         = "https://cloud-images.ubuntu.com/trusty/current/trusty-server-cloudimg-amd64.ova"
  network_interfaces {
    virtual_network = "VM-Lab"
  }
}
