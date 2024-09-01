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


resource "aws_ecs_cluster" "cluster_bia" {
  name = "cluster-bia"
}

//recuperando diretamente da aws para poder usa-la na criacao do launch template
data "aws_ssm_parameter" "ecs_node_ami" {
  name = "/aws/service/ecs/optimized-ami/amazon-linux-2/recommended/image_id"
}

resource "aws_launch_template" "ecs_ec2" {
  name_prefix            = "cluster-bia-web-"
  image_id               = data.aws_ssm_parameter.ecs_node_ami.value
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.bia-web.id]
  iam_instance_profile {
    arn = aws_iam_instance_profile.ecs_node.arn
  }
  monitoring {
    enabled = false
  }
  //informando o nome do cluster para fazer a linkagem do launch template com
  //o cluster
  user_data = base64encode(<<-EOF
    #!/bin/bash
    echo ECS_CLUSTER=${aws_ecs_cluster.cluster_bia.name} >> /etc/ecs/ecs.config;
  EOF
  )
}
