resource "local_file" "kubeconfig" {
  content              = spectrocloud_cluster_eks.cluster.kubeconfig
  filename             = "eks-cluster-kubeconfig"
  file_permission      = "0644"
  directory_permission = "0755"
}

