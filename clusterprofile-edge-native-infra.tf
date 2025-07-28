# Retrieve details of a specific cluster profile using name
data "spectrocloud_cluster_profile" "profile" {
  name    = ""                 # Required if 'id' is not provided
  version = ""                 # Optional: Version of the cluster profile
  context = ""                 # Optional: Allowed values: "project", "tenant", "system" (Defaults to "project")
}

output "same" {
  value = data.spectrocloud_cluster_profile.profile
}