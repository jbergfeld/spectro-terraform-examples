resource "local_file" "kubeconfig" {
  content              = spectrocloud_cluster_vsphere.cluster.admin_kube_config
  filename             = "vsphere-cluster-kubeconfig"
  file_permission      = "0644"
  directory_permission = "0755"
}

