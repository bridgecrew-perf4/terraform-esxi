provider "esxi" {
  esxi_hostname = var.esxi_hostname
  esxi_hostport = var.esxi_hostport
  esxi_hostssl  = var.esxi_hostssl
  esxi_username = var.esxi_username
  esxi_password = var.esxi_password
}

data "template_file" "default" {
  template  = file("users.tpl")
  vars = {
    HOSTNAME = "lab-lindev01.lheia.no"
  }
}

resource "esxi_portgroup" "vmlab" {
  name    = "VM-Lab"
  vswitch = "VM"
  vlan    = "50"
}

resource "esxi_guest" "lab_lindev01" {
  power             = "on"
  guest_name        = "lab-lindev01"
  disk_store        = var.disk_store_ssd
  ovf_source        = "https://cloud-images.ubuntu.com/releases/groovy/release/ubuntu-20.10-server-cloudimg-amd64.ova"
  numvcpus          = "2"
  memsize           = "2048"
  boot_disk_type    = "zeroedthick"
  network_interfaces {
    virtual_network = esxi_portgroup.vmlab.name
    nic_type        = "vmxnet3"
  }
  guestinfo = {
    "userdata.encoding" = "gzip+base64"
    "userdata"          = base64gzip(data.template_file.default.rendered)
  }
}
