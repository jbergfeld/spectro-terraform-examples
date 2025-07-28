terraform {
  required_providers {
    spectrocloud = {
      source = "spectrocloud/spectrocloud"
      version = "0.23.8"
    }
  }
}
provider "spectrocloud" {
  host          = var.sc_host         # Spectro Cloud endpoint (defaults to api.spectrocloud.com)
  api_key       = var.sc_api_key      # API key (or specify with SPECTROCLOUD_APIKEY env var)
  project_name  = var.sc_project_name # Project name (or specify with SPECTROCLOUD_PROJECT env var)
}