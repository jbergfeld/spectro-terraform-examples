output "cluster_id" {
  value = spectrocloud_cluster_eks.cluster.id
}

output "admin_kubeconfig" {
  value = spectrocloud_cluster_eks.cluster.admin_kube_config
}

output "cluster_kubeconfig" {
  value = spectrocloud_cluster_eks.cluster.kubeconfig
}

output "clusterprofile_id" {
  value = spectrocloud_cluster_profile.simple_eks_cp.id
}

