# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "sg-0baeda3ad1206f5e6"
resource "aws_security_group" "wordpress-db" {
  description = "acesso ec2 - wordpress-db"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = []
    description      = "acesso ec2 - wordpress-db"
    from_port        = 3306
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = ["sg-0a6c8835d649a7243"]
    self             = false
    to_port          = 3306
  }]
  name                   = "wordpress-db"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-038a32576faa90bfb"
}

# __generated__ by Terraform from "sg-09e680deb2260c2c7"
resource "aws_security_group" "awseb-e-paytmqmrdw-stack-AWSEBSecurityGroup-0MnjPUq2T5wh" {
  description = "VPC Security Group"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 80
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 80
  }]
  name                   = "awseb-e-paytmqmrdw-stack-AWSEBSecurityGroup-0MnjPUq2T5wh"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags = {
    Name                                = "biaebenv"
    "elasticbeanstalk:environment-id"   = "e-paytmqmrdw"
    "elasticbeanstalk:environment-name" = "biaebenv"
  }
  tags_all = {
    Name                                = "biaebenv"
    "elasticbeanstalk:environment-id"   = "e-paytmqmrdw"
    "elasticbeanstalk:environment-name" = "biaebenv"
  }
  vpc_id = "vpc-038a32576faa90bfb"
}

# __generated__ by Terraform from "sg-0d1d3e865900666ba"
resource "aws_security_group" "launch-wizard-1" {
  description = "launch-wizard-1 created 2024-06-04T12:35:57.153Z"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = ["186.218.120.6/32"]
    description      = ""
    from_port        = 22
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 22
  }]
  name                   = "launch-wizard-1"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-038a32576faa90bfb"
}

# __generated__ by Terraform from "sg-054997ae220f420b9"
resource "aws_security_group" "awseb-e-5ypitgybwp-stack-AWSEBSecurityGroup-fIKGHsXqxsqC" {
  description = "VPC Security Group"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 80
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 80
  }]
  name                   = "awseb-e-5ypitgybwp-stack-AWSEBSecurityGroup-fIKGHsXqxsqC"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags = {
    Name                                = "cdnbancoenv"
    "elasticbeanstalk:environment-id"   = "e-5ypitgybwp"
    "elasticbeanstalk:environment-name" = "cdnbancoenv"
  }
  tags_all = {
    Name                                = "cdnbancoenv"
    "elasticbeanstalk:environment-id"   = "e-5ypitgybwp"
    "elasticbeanstalk:environment-name" = "cdnbancoenv"
  }
  vpc_id = "vpc-038a32576faa90bfb"
}

# __generated__ by Terraform from "sg-0aca9124e7ce9c574"
resource "aws_security_group" "bia-build" {
  description = "acesso servidor build"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress                = []
  name                   = "bia-build"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-038a32576faa90bfb"
}

# __generated__ by Terraform from "sg-0012b30fdd022396d"
resource "aws_security_group" "acesso-aula-docker-aws" {
  description = "acesso-docker-a1"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "acesso global"
    from_port        = 80
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 80
    }, {
    cidr_blocks      = ["186.218.115.248/32"]
    description      = "acesso pelo meu ip"
    from_port        = 22
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 22
  }]
  name                   = "acesso-aula-docker-aws"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-038a32576faa90bfb"
}

# __generated__ by Terraform from "sg-0aaaabe6792999f28"
resource "aws_security_group" "dev-work-machine" {
  description = "maquina de trabalho para acesso as instancias"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "acesso da bia nessa porta"
    from_port        = 3001
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 3001
  }]
  name                   = "dev-work-machine"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-038a32576faa90bfb"
}

# __generated__ by Terraform from "sg-0fdfd8cd01ba912f9"
resource "aws_security_group" "alb-ec2-wordpress" {
  description = "acesso do alb p/ec2 em todas as portas"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = []
    description      = "acesso do alb p/ec2 em todas as portas"
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = ["sg-025ecb927802d0bcd"]
    self             = false
    to_port          = 65535
  }]
  name                   = "alb-ec2-wordpress"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-038a32576faa90bfb"
}

# __generated__ by Terraform from "sg-03ea44cf0b9dd3207"
resource "aws_security_group" "bia-beanstalk" {
  description = "Acesso na porta 80"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "acesso liberado na porta 80"
    from_port        = 80
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 80
  }]
  name                   = "bia-beanstalk"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-038a32576faa90bfb"
}

# __generated__ by Terraform from "sg-02724264f324bdf83"
resource "aws_security_group" "default" {
  description = "default VPC security group"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "liberado para o mundo"
    from_port        = 3001
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 3001
  }]
  name                   = "default"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-038a32576faa90bfb"
}
