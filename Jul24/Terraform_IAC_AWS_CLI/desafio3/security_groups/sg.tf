# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "sg-08ed5e60367afb262"
resource "aws_security_group" "ec2-efs" {
  description = "acesso ec2 p/efs"
  egress      = []
  ingress = [{
    cidr_blocks      = []
    description      = "ec2 - nfs"
    from_port        = 2049
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = ["sg-0a6c8835d649a7243"]
    self             = false
    to_port          = 2049
  }]
  name                   = "ec2-efs"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-038a32576faa90bfb"
}

# __generated__ by Terraform from "sg-0261da7c3e064ca7e"
resource "aws_security_group" "bia-dev" {
  description = "acesso do bia-dev"
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
  name                   = "bia-dev"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-038a32576faa90bfb"
}

# __generated__ by Terraform from "sg-0e170724349378642"
resource "aws_security_group" "bia-ec2" {
  description = "acesso do bia-ec2"
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
    description      = "acesso do bia alb"
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = ["sg-0716cf24045de3a22"]
    self             = false
    to_port          = 65535
  }]
  name                   = "bia-ec2"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-038a32576faa90bfb"
}

# __generated__ by Terraform from "sg-025ecb927802d0bcd"
resource "aws_security_group" "alb" {
  description = "alb http/https"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "ALL"
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
    description      = "do mundo p/alb"
    from_port        = 443
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 443
    }, {
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "do mundo p/alb"
    from_port        = 80
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 80
  }]
  name                   = "alb"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-038a32576faa90bfb"
}

resource "aws_security_group" "bia-alb" {
  description = "acesso do bia alb"
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
    from_port        = 443
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 443
    }, {
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "liberado para o mundo"
    from_port        = 80
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 80
  }]
  name                   = "bia-alb"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-038a32576faa90bfb"
}

# __generated__ by Terraform from "sg-0f5df99d82d1c9c26"
resource "aws_security_group" "bia-web" {
  description = "acesso do bia-web"
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
    description      = "acesso para o mundo"
    from_port        = 443
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 443
    }, {
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "acesso para o mundo"
    from_port        = 80
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 80
    }, {
    cidr_blocks      = ["186.218.120.6/32"]
    description      = "SSH"
    from_port        = 22
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 22
  }]
  name                   = "bia-web"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-038a32576faa90bfb"
}

# __generated__ by Terraform from "sg-0cd9cd3656b95f603"
resource "aws_security_group" "ssh-local" {
  description = "My IP"
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
    cidr_blocks      = ["186.218.114.195/32"]
    description      = "minha maquina"
    from_port        = 22
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 22
  }]
  name                   = "ssh-local"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-038a32576faa90bfb"
}

# __generated__ by Terraform from "sg-09b26e093d784bb3d"
resource "aws_security_group" "bia-db" {
  description = "acesso do bia db"
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
    description      = ""
    from_port        = 5432
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = ["sg-0e170724349378642"]
    self             = false
    to_port          = 5432
    }, {
    cidr_blocks      = []
    description      = "acesso da maquina de trabalho"
    from_port        = 5432
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = ["sg-0aaaabe6792999f28"]
    self             = false
    to_port          = 5432
    }, {
    cidr_blocks      = []
    description      = "acesso do elastic beanstalk criado pelo sistema"
    from_port        = 5432
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = ["sg-09e680deb2260c2c7"]
    self             = false
    to_port          = 5432
    }, {
    cidr_blocks      = []
    description      = "acesso do servidor build"
    from_port        = 5432
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = ["sg-0aca9124e7ce9c574"]
    self             = false
    to_port          = 5432
    }, {
    cidr_blocks      = []
    description      = "bia-dev"
    from_port        = 5432
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = ["sg-0261da7c3e064ca7e"]
    self             = false
    to_port          = 5432
    }, {
    cidr_blocks      = []
    description      = "bia-web"
    from_port        = 5432
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = ["sg-0f5df99d82d1c9c26"]
    self             = false
    to_port          = 5432
    }, {
    cidr_blocks      = []
    description      = "ec2"
    from_port        = 5432
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = ["sg-0a6c8835d649a7243"]
    self             = false
    to_port          = 5432
  }]
  name                   = "bia-db"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-038a32576faa90bfb"
}

# __generated__ by Terraform from "sg-0a6c8835d649a7243"
resource "aws_security_group" "ec2" {
  description = "acesso ec2"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "ALL"
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
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = ["sg-025ecb927802d0bcd"]
    self             = false
    to_port          = 65535
  }]
  name                   = "ec2"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-038a32576faa90bfb"
}
