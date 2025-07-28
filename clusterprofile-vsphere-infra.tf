resource "spectrocloud_cluster_profile" "simple_vsphere_cp" {
  name        = "tf-infra-vsphere-profile"
  description = "Simple vSphere infrastructure cluster profile managed by Terraform."
  cloud       = "vsphere"
  type        = "infra"
  version     = "1.0.0"

  pack {
    name   = data.spectrocloud_pack.os.name
    tag    = local.os_version
    uid    = data.spectrocloud_pack.os.id
    values = data.spectrocloud_pack.os.values
  }

  pack {
    name   = data.spectrocloud_pack.k8s.name
    tag    = local.k8s_version
    uid    = data.spectrocloud_pack.k8s.id
    values = data.spectrocloud_pack.k8s.values
  }

  pack {
    name   = data.spectrocloud_pack.cni.name
    tag    = local.cni_version
    uid    = data.spectrocloud_pack.cni.id
    values = data.spectrocloud_pack.cni.values
  }

  pack {
    name   = data.spectrocloud_pack.csi.name
    tag    = local.csi_version
    uid    = data.spectrocloud_pack.csi.id
    values = data.spectrocloud_pack.csi.values
  }

}

