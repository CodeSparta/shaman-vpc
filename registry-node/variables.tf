variable "cidr_blocks" { default = ""}
variable "cluster_name" { default = "" }
variable "aws_region" { default = ""}
variable "default_tags" { default = {} }
variable "aws_azs" { default = [""] }
variable "vpc_private_subnet_cidrs" { default = [""] }
variable "vpc_public_subnet_cidrs" { default = [""] }
variable "aws_access_key" { default = ""}
variable "aws_secret_key" { default = ""}
variable "vpc_id" {}
variable "vpc_cidr" {default = "" }
variable "ssh_public_key" {default = "" }
variable "rhcos_ami" {default = ""}
variable "registry_type" {default = "m5.xlarge"}
variable "registry_volume" {default = ""}
variable "master_sg_ids" {default = "" }