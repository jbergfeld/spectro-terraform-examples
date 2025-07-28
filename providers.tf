terraform {
  required_providers {
    spectrocloud = {
      version = ">= 0.23.8"
      source  = "spectrocloud/spectrocloud"
    }
  }
}

variable "sc_host" {
  description = "Spectro Cloud Endpoint"
}

variable "sc_api_key" {
  description = "Spectro Cloud API key"
}

variable "sc_project_name" {
  description = "Spectro Cloud Project (e.g: Default)"
  default     = "Default"
}

variable "sc_cloudaccount" {
  description = "Spectro Cloud Cloud Account"
  default     = ""
}

provider "spectrocloud" {
  host         = var.sc_host
  api_key      = var.sc_api_key
  project_name = var.sc_project_name
}

