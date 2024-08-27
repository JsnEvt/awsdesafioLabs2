terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


# Configure the AWS Provider
provider "aws" {
  region  = "us-east-1"
  profile = "jason"
}

# Create a VPC
# resource "aws_vpc" "example" {
#   cidr_block = "10.0.0.0/16"
# }

resource "aws_security_group" "sg-bia-dev" {
  name        = "bia-dev-tf"
  description = "Regra para instancia de trabalho bia-dev com tf"
  vpc_id      = "vpc-038a32576faa90bfb"
  tags = {
    Name = "allow_tls_ipv4"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  description       = "Liberado para o mundo"
  security_group_id = aws_security_group.sg-bia-dev.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 3001
  ip_protocol       = "tcp"
  to_port           = 3001
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.sg-bia-dev.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}


resource "aws_instance" "bia-dev" {
  ami           = "ami-02f3f602d23f1659d"
  instance_type = "t3.micro"
  tags = {
    ambiente = "dev"
    Name     = var.instance_name
  }
  vpc_security_group_ids = [aws_security_group.sg-bia-dev.id]
  root_block_device {
    volume_size = 10
  }
  iam_instance_profile = data.aws_iam_instance_profile.role_acesso_ssm.name
  user_data            = file("userdata_biadev.sh")
}
