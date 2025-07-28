resource "local_file" "kubeconfig" {
  content              = spectrocloud_cluster_edge_native.cluster.kubeconfig
  filename             = "edgey-native-kubeconfig"
  file_permission      = "0644"
  directory_permission = "0755"
}

