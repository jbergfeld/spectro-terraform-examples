output "cluster_kubeconfig" {
  value = spectrocloud_cluster_vsphere.cluster.kubeconfig
}

output "admin_kubeconfig" {
  value = spectrocloud_cluster_vsphere.cluster.admin_kube_config
}

