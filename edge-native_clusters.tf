resource "spectrocloud_cluster_edge_native" "cluster" {
  name            = ""                   #name your cluster
  skip_completion = true                 # this allows for terrform to not wait for the cluster to be ready

  cluster_profile {
    id = data.spectrocloud_cluster_profile.profile.id
  }

  cloud_config {
    ssh_keys           = var.ssh_keys           #provide key if you'd like
    vip                = var.vip                #you can add a VIP on the edge devices local network
    overlay_cidr_range = var.overlay_cidr_range #CIDR range for overlay network
  }

  machine_pool {
    control_plane           = true
    control_plane_as_worker = true
    name                    = "all-in-one"      #this is for a single node example

    edge_host {
      host_uid  = var.host_uid                  #his will be whatever you edge device registers as ie. edge-blablah1234213 etc
    }

  }
}
#this results in a single node edge cluster deployed with your specified cluster profile