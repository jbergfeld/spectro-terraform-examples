locals {
  os_version   = "22.04"
  k8s_version  = "1.28.11"
  #cni_name     = "cni-cilium-fips"
  #cni_version  = "1.17.1"
  cni_name     = "cni-calico"
  cni_version  = "3.29.3"
  csi_version  = "3.3.1"

}

data "spectrocloud_registry" "fips-registry" {
  name = "Palette Registry"
}

data "spectrocloud_pack" "csi" {
  name         = "csi-vsphere-csi"
  registry_uid = data.spectrocloud_registry.fips-registry.id
  version      = local.csi_version
}

data "spectrocloud_pack" "cni" {
  name         = local.cni_name
  registry_uid = data.spectrocloud_registry.fips-registry.id
  version      = local.cni_version
}

data "spectrocloud_pack" "k8s" {
  name         = "kubernetes"
  registry_uid = data.spectrocloud_registry.fips-registry.id
  version      = local.k8s_version
}


data "spectrocloud_pack" "os" {
  name         = "ubuntu-vsphere"
  registry_uid = data.spectrocloud_registry.fips-registry.id
  version      = local.os_version
}

