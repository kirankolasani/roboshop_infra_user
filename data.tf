data "aws_ami" "ami_id" {
  
  #most_recent      = true
  name_regex       = "devops-kiran"
  owners           = ["905417995223"]

  filter {
    name   = "name"
    values = ["devops-kiran"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}