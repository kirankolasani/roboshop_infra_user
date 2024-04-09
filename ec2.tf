module "ec2_instance" {
    source  = "terraform-aws-modules/ec2-instance/aws"
    for_each = var.instance
    name = var.project_name
    ami = local.ami_id
    instance_type          = each.value
    vpc_security_group_ids = [local.sg_id]
    subnet_id              = each.key == "web" ? local.public_subnet_ids[0] : local.private_subnet_ids[0]

    tags = merge(
        {
            Name = each.key
        },
        var.common_tags
    )
}
module "ansible_instance" {
    source  = "terraform-aws-modules/ec2-instance/aws"
    
    name = var.project_name
    ami = local.ami_id
    instance_type          = "t2.micro"
    vpc_security_group_ids = [local.sg_id]
    subnet_id              = local.public_subnet_ids[0] 
    user_data = file("roboshop-ansible.sh")

    tags = merge(
        {
            Name = "ansible-tf"
        },
        var.common_tags
    )
}
