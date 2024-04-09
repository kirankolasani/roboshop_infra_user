module "this" {
  #source = "../terraform_aws_vpc_adavanced"
  source = "git::git@github.com:kirankolasani/terraform_aws_vpc_advanced.git"
  cidr_block = var.cidr_block
  common_tags = var.common_tags
  project_name = var.project_name
  env = var.env
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  database_subnet_cidr = var.database_subnet_cidr
}