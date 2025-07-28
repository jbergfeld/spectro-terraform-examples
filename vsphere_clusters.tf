data "spectrocloud_cloudaccount_vsphere" "vsphere_cloudaccount" {
  name    = var.sc_cloudaccount
}

resource "spectrocloud_cluster_vsphere" "cluster" {
  name = "tf-vsphere-cluster-1"
  cloud_account_id = data.spectrocloud_cloudaccount_vsphere.vsphere_cloudaccount.id
  cluster_profile {
    id = spectrocloud_cluster_profile.simple_vsphere_cp.id
  }

  cloud_config {
    #static_ip     = true
    #network_type  = "VIP"
    #host_endpoint = "IP_ADDRESS"

    network_type  = "DDNS"
    network_search_domain = var.vsphere_search_domain

    datacenter = var.vsphere_datacenter
    folder     = var.vsphere_folder
    ssh_keys   = [var.cluster_ssh_public_key]
    image_template_folder = var.vsphere_template_folder
  }

  machine_pool {
    control_plane           = true
    control_plane_as_worker = true
    name                    = "cp-pool"
    count                   = 1
    placement {
      cluster       = var.vsphere_cluster
      resource_pool = var.vsphere_resource_pool
      datastore     = var.vsphere_datastore
      network       = var.vsphere_network
    }
    instance_type {
      disk_size_gb = 100
      memory_mb    = 8192
      cpu          = 6
    }
  }
}

