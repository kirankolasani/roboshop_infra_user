locals {
    vpc_id = module.this.vpc_id
    public_subnet_ids = module.this.public_subnet_ids
    private_subnet_ids = module.this.private_subnet_ids
    database_subnet_ids = module.this.database_subnet_ids
    db_subnet_group_id = module.this.db_subnet_group_id
    sg_id   = module.sg.sg_id
    ami_id = data.aws_ami.ami_id.id
    ips = module.ec2_instance
    
  
}