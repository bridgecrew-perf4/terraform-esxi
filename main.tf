provider "esxi" {
  esxi_hostname = var.esxi_hostname
  esxi_hostport = var.esxi_hostport
  esxi_hostssl  = var.esxi_hostssl
  esxi_username = var.esxi_username
  esxi_password = var.esxi_password
}

#data "template_file" "meta_data" {
#  template = file("metadata.yaml")
#}
#
#data "template_file" "user_data" {
#  template = file("userdata.yaml")
#}
#
#resource "esxi_portgroup" "vm_lab" {
#  name    = "VM-Lab"
#  vswitch = "VM"
#  vlan    = "50"
#}
#
#resource "esxi_guest" "lab_lindev01" {
#  power             = "on"
#  guest_name        = "lab-lindev01"
#  disk_store        = var.disk_store_ssd
#  numvcpus          = "2"
#  memsize           = "2048"
#  boot_disk_type    = "zeroedthick"
#  ovf_source        = "https://cloud-images.ubuntu.com/releases/groovy/release/ubuntu-20.10-server-cloudimg-amd64.ova"
#  network_interfaces {
#    virtual_network = esxi_portgroup.vm_lab.name
#    nic_type        = "vmxnet3"
#  }
#  guestinfo = {
#    "metadata"          = base64gzip(data.template_file.meta_data.rendered)
#    "metadata.encoding" = "gzip+base64"
#    "userdata"          = base64gzip(data.template_file.user_data.rendered)
#    "userdata.encoding" = "gzip+base64"
#  }
#}
#
#resource "esxi_guest" "lab_fedora01" {
#  power             = "on"
#  guest_name        = "lab-fedora01"
#  disk_store        = var.disk_store_ssd
#  numvcpus          = "2"
#  memsize           = "2048"
#  ovf_source        = "https://builds.coreos.fedoraproject.org/prod/streams/stable/builds/33.20201214.3.1/x86_64/fedora-coreos-33.20201214.3.1-vmware.x86_64.ova"
#  network_interfaces {
#    virtual_network = esxi_portgroup.vm_lab.name
#    nic_type        = "vmxnet3"
#  }
#  guestinfo = {
#    "metadata"          = base64encode(data.template_file.meta_data.rendered)
#    "metadata.encoding" = "base64"
#    "userdata"          = base64encode(data.template_file.user_data.rendered)
#    "userdata.encoding" = "base64"
#  }
#}
