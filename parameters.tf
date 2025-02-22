resource "aws_ssm_parameter" "vpc_id" {
    name  = "/roboshop/dev/vpc_id"
    type  = "String"
    value = local.vpc_id
}
resource "aws_ssm_parameter" "sg_id" {
    name  = "/roboshop/dev/sg_id"
    type  = "String"
    value = local.sg_id
}
resource "aws_ssm_parameter" "ami_id" {
    name  = "/roboshop/dev/ami_id"
    type  = "String"
    value = local.ami_id
}
resource "aws_ssm_parameter" "db_subnet_group_id" {
    name  = "/roboshop/dev/db_subnet_group_id"
    type  = "String"
    value = local.db_subnet_group_id
}
resource "aws_ssm_parameter" "public_subnet_ids" {
    name  = "/roboshop/dev/public_subnet_ids"
    type  = "StringList"
    value = join(",", local.public_subnet_ids)
}
resource "aws_ssm_parameter" "private_subnet_ids" {
    name  = "/roboshop/dev/private_subnet_ids"
    type  = "StringList"
    value = join(",", local.private_subnet_ids)
}
resource "aws_ssm_parameter" "database_subnet_ids" {
    name  = "/roboshop/dev/database_subnet_ids"
    type  = "StringList"
    value = join(",", local.database_subnet_ids)
}