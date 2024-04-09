variable "cidr_block" {
    default = "10.0.0.0/16"
  
}
variable "common_tags" {
    default = {
        Project = "roboshop"
        Environment = "Dev"
        Terraform = true        
    }
  
}
variable "project_name" {
    default = "roboshop"
  
}
variable "env" {
    default = "dev"
}
variable "public_subnet_cidr" {
    default = ["10.0.1.0/24", "10.0.2.0/24"]
  
}
variable "private_subnet_cidr" {
    default = ["10.0.11.0/24", "10.0.12.0/24"]
  
}
variable "database_subnet_cidr" {
    default = ["10.0.21.0/24", "10.0.22.0/24"]
  
}

variable "ingress_rules" {
    default = [
        {
            description = "Allowing 22 port"
            from_port   = "22"
            to_port     = "22"
            protocol    = "tcp"
            cidr_blocks  = ["0.0.0.0/0"]
        },

        {
            description = "Allowing all traffic"
            from_port   = 0
            to_port     = 0
            protocol    = "-1"
            cidr_blocks  = ["0.0.0.0/0"]
        }
    ]
  
}
variable "instance" {
    default = {
        mongodb = "t2.medium"
        mysql = "t2.medium"
        rabbitmq = "t2.micro"
        redis = "t2.micro"
        catalogue = "t2.micro"
        cart = "t2.micro"
        user = "t2.micro"
        shipping = "t2.micro"
        payment = "t2.micro"
        web = "t2.micro"
    }
  
}
variable "zone_name" {
    default = "devopsaws.site"
  
}
variable "zone_id" {
    default = "Z09758961YQX652W11A6M"
  
}
