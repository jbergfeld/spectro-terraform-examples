locals {
  os_version  = "1.0.0"
  k8s_version = "1.32"
  cni_version = "1.1.17"
  csi_version = "1.35.0"
}

data "spectrocloud_registry" "registry" {
  name = "Public Repo"
}

data "spectrocloud_registry" "fips-registry" {
  name = "Palette Registry"
}

data "spectrocloud_pack" "csi" {
  name         = "csi-aws-ebs"
  registry_uid = data.spectrocloud_registry.fips-registry.id
  version      = local.csi_version
}

data "spectrocloud_pack" "cni" {
  name         = "cni-aws-vpc-eks-helm-fips"
  registry_uid = data.spectrocloud_registry.fips-registry.id
  version      = local.cni_version
}

data "spectrocloud_pack" "k8s" {
  name         = "kubernetes-eks"
  registry_uid = data.spectrocloud_registry.fips-registry.id
  version      = local.k8s_version
}


data "spectrocloud_pack" "os" {
  name         = "amazon-linux-eks"
  registry_uid = data.spectrocloud_registry.fips-registry.id
  version      = local.os_version
}

