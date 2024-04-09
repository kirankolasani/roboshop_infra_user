module "sg" {
    source = "../terraform_aws_security_group"
    vpc_id = local.vpc_id
    common_tags = var.common_tags
    ingress_rules = var.ingress_rules
    project_name = var.project_name
    env = var.env
}