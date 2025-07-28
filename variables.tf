variable "cloud_account_type" {
  default = "secret"
}

variable "cloud_account_name" {
  default = ""
}

# Option A (When Using access key and secret key)
variable "aws_access_key" {
  default = ""
}
variable "aws_secret_key" {
  default = ""
}

# Option B (When Using sts info, arn and external id)
variable "arn" {
  default = ""
}
variable "external_id" {
  default = ""
}

# Cluster
variable "aws_ssh_key_name" {
  default = "MyKeyPair"
}
variable "aws_region" {
  default = "us-west-1"
}

variable "aws_vpc_id" {
  default = ""
}

# Provisioning Option A (Dynamic)
variable "azs" {
  default = []
  type    = list(string)
}

# Provisioning Option B (Static)
variable "master_azs_subnets_map" {
  default = {}
  type    = map(string)
}

variable "worker_azs_subnets_map" {
  default = {}
  type    = map(string)
}

