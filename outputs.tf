output "azs" {
    value = module.this.azs
  
}
output "vpc_id" {
    value = local.vpc_id
  
}
output "public_subnet_ids" {
    value = local.public_subnet_ids
}
output "private_subnet_ids" {
    value = local.public_subnet_ids
}
output "database_subnet_ids" {
    value = local.public_subnet_ids
}
output "security_gr_id" {
    value = local.sg_id
  
}
output "ami_id" {
    value = data.aws_ami.ami_id.id
  
}
# output "ips" {
#     value = module.ec2_instance
  
# }
