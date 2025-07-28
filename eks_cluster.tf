data "spectrocloud_cloudaccount_aws" "account" {
  name = var.cloud_account_name
}

resource "spectrocloud_cluster_eks" "cluster" {
  name = "tf-cluster01-eks"
  #skip_completion = true
  cloud_account_id = data.spectrocloud_cloudaccount_aws.account.id

  cluster_profile {
    id = spectrocloud_cluster_profile.simple_eks_cp.id
  }

  cloud_config {
    ssh_key_name = var.aws_ssh_key_name
    region       = var.aws_region
    #vpc_id       = var.aws_vpc_id
    #azs          = var.azs != [] ? var.azs : null
    #az_subnets   = var.master_azs_subnets_map != {} ? var.master_azs_subnets_map : null
  }

  machine_pool {
    name          = "worker-pool-1"
    count         = 1
    instance_type = "t3.medium"
    #azs           = var.azs != [] ? var.azs : null
    #az_subnets    = var.master_azs_subnets_map != {} ? var.master_azs_subnets_map : null
    disk_size_gb  = 60
  }
}

