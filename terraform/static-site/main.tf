provider "aws" {
    region = var.region
    profile = var.profile
}

resource "aws_instance" "site" {
    ami = "ami-09e67e426f25ce0d7"
    instance_type = "t2.micro"
    key_name = "devops_1"
    vpc_security_group_ids = [ "sg-fbcb0af0", "sg-027b2629ff5351b6a" ]
    tags = {
      Name = var.name
      group = var.name
    }
}