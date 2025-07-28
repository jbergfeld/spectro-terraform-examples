# Spectro Cloud Terraform examples
Examples of using the Spectro Cloud Terraform provider to provision clusters in a vSphere environment.

To get started, create a `terraform.tfvars` file using your settings for your environment.

```
sc_host         = "api.spectrocloud.com"
sc_api_key      = "ABC123...="
sc_project_name = "Default"
sc_cloudaccount = "my-vsphere-account"

vsphere_datacenter      = "Datacenter"
vsphere_cluster         = "Cluster"
vsphere_datastore       = "vsanDatastore"
vsphere_network         = "VM Network"
vsphere_resource_pool   = "my-resource-pool"
vsphere_folder          = "my-folder"
vsphere_search_domain   = "example.com"
vsphere_template_folder = "spectro-templates"

cluster_ssh_public_key  = "ssh-rsa AAAABC....="
```

