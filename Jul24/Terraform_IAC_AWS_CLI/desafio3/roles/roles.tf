# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "role-permission-ecs-x-efs"
resource "aws_iam_role" "role-permission-ecs-x-efs" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ecs-tasks.amazonaws.com"
      }
      Sid = ""
    }]
    Version = "2012-10-17"
  })
  description           = "Allows ECS tasks to call AWS services on your behalf."
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::aws:policy/AmazonElasticFileSystemClientReadWriteAccess"]
  max_session_duration  = 3600
  name                  = "role-permission-ecs-x-efs"
  name_prefix           = null
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "aws-elasticbeanstalk-ec2-role"
resource "aws_iam_instance_profile" "aws_elasticbeanstalk_ec2_role" {
  name        = "aws-elasticbeanstalk-ec2-role"
  name_prefix = null
  path        = "/"
  role        = "aws-elasticbeanstalk-ec2-role"
  tags        = {}
  tags_all    = {}
}

# __generated__ by Terraform from "AWSServiceRoleForElasticLoadBalancing"
resource "aws_iam_role" "AWSServiceRoleForElasticLoadBalancing" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "elasticloadbalancing.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Allows ELB to call AWS services on your behalf."
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::aws:policy/aws-service-role/AWSElasticLoadBalancingServiceRolePolicy"]
  max_session_duration  = 3600
  name                  = "AWSServiceRoleForElasticLoadBalancing"
  name_prefix           = null
  path                  = "/aws-service-role/elasticloadbalancing.amazonaws.com/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "terraform-role"
resource "aws_iam_role" "terraform-role" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Condition = {
        StringEquals = {
          "sts:ExternalId" = "2c3cbbf3-5424-4e2b-bb06-511b34918864"
        }
      }
      Effect = "Allow"
      Principal = {
        AWS = "arn:aws:iam::905418339132:root"
      }
    }]
    Version = "2012-10-17"
  })
  description           = null
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration  = 3600
  name                  = "terraform-role"
  name_prefix           = null
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "AWSServiceRoleForECS"
resource "aws_iam_role" "AWSServiceRoleForECS" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ecs.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Role to enable Amazon ECS to manage your cluster."
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::aws:policy/aws-service-role/AmazonECSServiceRolePolicy"]
  max_session_duration  = 3600
  name                  = "AWSServiceRoleForECS"
  name_prefix           = null
  path                  = "/aws-service-role/ecs.amazonaws.com/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "role-ecs-system-manager"
resource "aws_iam_role" "role-ecs-system-manager" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ecs-tasks.amazonaws.com"
      }
      Sid = ""
    }]
    Version = "2012-10-17"
  })
  description           = "Acesso do ECS as variaveis - parameters - do system manager."
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::aws:policy/AmazonSSMReadOnlyAccess"]
  max_session_duration  = 3600
  name                  = "role-ecs-system-manager"
  name_prefix           = null
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "AWSServiceRoleForSupport"
resource "aws_iam_role" "AWSServiceRoleForSupport" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "support.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Enables resource access for AWS to provide billing, administrative and support services"
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"]
  max_session_duration  = 3600
  name                  = "AWSServiceRoleForSupport"
  name_prefix           = null
  path                  = "/aws-service-role/support.amazonaws.com/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "role-s3-bucketbiacdn"
resource "aws_iam_role" "role-s3-bucketbiacdn" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Allows EC2 instances to call AWS services on your behalf."
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::905418339132:policy/policy-acesso-s3-console"]
  max_session_duration  = 3600
  name                  = "role-s3-bucketbiacdn"
  name_prefix           = null
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "AWSCodePipelineServiceRole-us-east-1-pipeecs"
resource "aws_iam_role" "AWSCodePipelineServiceRole-us-east-1-pipeecs" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "codepipeline.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = null
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::905418339132:policy/service-role/AWSCodePipelineServiceRole-us-east-1-pipeecs"]
  max_session_duration  = 3600
  name                  = "AWSCodePipelineServiceRole-us-east-1-pipeecs"
  name_prefix           = null
  path                  = "/service-role/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "codebuild-pipeecs1-service-role"
resource "aws_iam_role" "codebuild-pipeecs1-service-role" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "codebuild.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = null
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::905418339132:policy/service-role/CodeBuildBasePolicy-pipeecs1-us-east-1", "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPowerUser"]
  max_session_duration  = 3600
  name                  = "codebuild-pipeecs1-service-role"
  name_prefix           = null
  path                  = "/service-role/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "role-instance-profile-beanstalk"
resource "aws_iam_instance_profile" "role-instance-profile-beanstalk" {
  name        = "role-instance-profile-beanstalk"
  name_prefix = null
  path        = "/"
  role        = "role-instance-profile-beanstalk"
  tags        = {}
  tags_all    = {}
}

# __generated__ by Terraform from "AWSServiceRoleForAmazonElasticFileSystem"
resource "aws_iam_role" "AWSServiceRoleForAmazonElasticFileSystem" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "elasticfilesystem.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = null
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::aws:policy/aws-service-role/AmazonElasticFileSystemServiceRolePolicy"]
  max_session_duration  = 3600
  name                  = "AWSServiceRoleForAmazonElasticFileSystem"
  name_prefix           = null
  path                  = "/aws-service-role/elasticfilesystem.amazonaws.com/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "AWSServiceRoleForAutoScaling"
resource "aws_iam_role" "AWSServiceRoleForAutoScaling" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "autoscaling.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Default Service-Linked Role enables access to AWS Services and Resources used or managed by Auto Scaling"
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::aws:policy/aws-service-role/AutoScalingServiceRolePolicy"]
  max_session_duration  = 3600
  name                  = "AWSServiceRoleForAutoScaling"
  name_prefix           = null
  path                  = "/aws-service-role/autoscaling.amazonaws.com/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "AWSServiceRoleForGlobalAccelerator"
resource "aws_iam_role" "AWSServiceRoleForGlobalAccelerator" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "globalaccelerator.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Allows Global Accelerator to call AWS services on customer's behalf"
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::aws:policy/aws-service-role/AWSGlobalAcceleratorSLRPolicy"]
  max_session_duration  = 3600
  name                  = "AWSServiceRoleForGlobalAccelerator"
  name_prefix           = null
  path                  = "/aws-service-role/globalaccelerator.amazonaws.com/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "ecsInstanceRole"
resource "aws_iam_role" "ecsInstanceRole" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
      Sid = ""
    }]
    Version = "2008-10-17"
  })
  description           = null
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess", "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPowerUser", "arn:aws:iam::aws:policy/AmazonECS_FullAccess", "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role"]
  max_session_duration  = 3600
  name                  = "ecsInstanceRole"
  name_prefix           = null
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "role-instance-profile-beanstalk"
resource "aws_iam_role" "role-instance-profile-beanstalk" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Allows EC2 instances to call AWS services on your behalf."
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::aws:policy/AWSElasticBeanstalkWebTier"]
  max_session_duration  = 3600
  name                  = "role-instance-profile-beanstalk"
  name_prefix           = null
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "roleec2-s3"
resource "aws_iam_role" "roleec2-s3" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Allows EC2 instances to call AWS services on your behalf for S3. Read only."
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"]
  max_session_duration  = 3600
  name                  = "roleec2-s3"
  name_prefix           = null
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "AWSCodePipelineServiceRole-us-east-1-bia-pipeline"
resource "aws_iam_role" "AWSCodePipelineServiceRole-us-east-1-bia-pipeline" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "codepipeline.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = null
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::905418339132:policy/service-role/AWSCodePipelineServiceRole-us-east-1-bia-pipeline"]
  max_session_duration  = 3600
  name                  = "AWSCodePipelineServiceRole-us-east-1-bia-pipeline"
  name_prefix           = null
  path                  = "/service-role/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "AWSServiceRoleForApplicationAutoScaling_ECSService"
resource "aws_iam_role" "AWSServiceRoleForApplicationAutoScaling_ECSService" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ecs.application-autoscaling.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = null
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::aws:policy/aws-service-role/AWSApplicationAutoscalingECSServicePolicy"]
  max_session_duration  = 3600
  name                  = "AWSServiceRoleForApplicationAutoScaling_ECSService"
  name_prefix           = null
  path                  = "/aws-service-role/ecs.application-autoscaling.amazonaws.com/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "ecsTaskExecutionRole"
resource "aws_iam_role" "ecsTaskExecutionRole" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ecs-tasks.amazonaws.com"
      }
      Sid = ""
    }]
    Version = "2008-10-17"
  })
  description           = null
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::aws:policy/AmazonSSMReadOnlyAccess", "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"]
  max_session_duration  = 3600
  name                  = "ecsTaskExecutionRole"
  name_prefix           = null
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
  inline_policy {
    name = "policy-get-secrets-rds"
    policy = jsonencode({
      Statement = [{
        Action   = ["secretsmanager:GetSecretValue"]
        Effect   = "Allow"
        Resource = ["arn:aws:secretsmanager:us-east-1:905418339132:secret:rds!db-1f79395a-f557-470b-b647-5173dcf3310f-8t79tk"]
      }]
      Version = "2012-10-17"
    })
  }
}

# __generated__ by Terraform from "role-s3-bucketbiacdn"
resource "aws_iam_instance_profile" "role-s3-bucketbiacdn" {
  name        = "role-s3-bucketbiacdn"
  name_prefix = null
  path        = "/"
  role        = "role-s3-bucketbiacdn"
  tags        = {}
  tags_all    = {}
}

# __generated__ by Terraform from "aws-elasticbeanstalk-ec2-role"
resource "aws_iam_role" "aws_elasticbeanstalk_ec2_role" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Allows EC2 instances to call AWS services on your behalf."
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::aws:policy/AWSElasticBeanstalkMulticontainerDocker", "arn:aws:iam::aws:policy/AWSElasticBeanstalkWebTier", "arn:aws:iam::aws:policy/AWSElasticBeanstalkWorkerTier", "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly", "arn:aws:iam::aws:policy/AmazonSSMFullAccess", "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore", "arn:aws:iam::aws:policy/SecretsManagerReadWrite"]
  max_session_duration  = 3600
  name                  = "aws-elasticbeanstalk-ec2-role"
  name_prefix           = null
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "codebuild-pipelineecs-service-role"
resource "aws_iam_role" "codebuild-pipelineecs-service-role" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "codebuild.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = null
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::905418339132:policy/service-role/CodeBuildBasePolicy-pipelineecs-us-east-1", "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPowerUser"]
  max_session_duration  = 3600
  name                  = "codebuild-pipelineecs-service-role"
  name_prefix           = null
  path                  = "/service-role/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "aws-elasticbeanstalk-service-role"
resource "aws_iam_role" "aws-elasticbeanstalk-service-role" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "elasticbeanstalk.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = null
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::aws:policy/AWSElasticBeanstalkManagedUpdatesCustomerRolePolicy", "arn:aws:iam::aws:policy/AmazonEC2FullAccess", "arn:aws:iam::aws:policy/service-role/AWSElasticBeanstalkEnhancedHealth"]
  max_session_duration  = 3600
  name                  = "aws-elasticbeanstalk-service-role"
  name_prefix           = null
  path                  = "/service-role/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "role-acesso-ssm"
resource "aws_iam_role" "role-acesso-ssm" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Allows EC2 instances to call AWS services on your behalf."
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::aws:policy/AdministratorAccess", "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess", "arn:aws:iam::aws:policy/AmazonECS_FullAccess", "arn:aws:iam::aws:policy/AmazonS3FullAccess", "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"]
  max_session_duration  = 3600
  name                  = "role-acesso-ssm"
  name_prefix           = null
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "rds-monitoring-role"
resource "aws_iam_role" "rds-monitoring-role" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "monitoring.rds.amazonaws.com"
      }
      Sid = ""
    }]
    Version = "2012-10-17"
  })
  description           = null
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole"]
  max_session_duration  = 3600
  name                  = "rds-monitoring-role"
  name_prefix           = null
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "bia-build-project"
resource "aws_iam_role" "bia-build-project" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "codebuild.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = null
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::905418339132:policy/service-role/CodeBuildBasePolicy-bia-build-project-us-east-1", "arn:aws:iam::905418339132:policy/service-role/CodeBuildSecretsManagerPolicy-bia-hom-project-us-east-1", "arn:aws:iam::905418339132:policy/service-role/CodeBuildVpcPolicy-bia-hom-project-us-east-1", "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPowerUser", "arn:aws:iam::aws:policy/AmazonS3FullAccess", "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore", "arn:aws:iam::aws:policy/SecretsManagerReadWrite"]
  max_session_duration  = 3600
  name                  = "bia-build-project"
  name_prefix           = null
  path                  = "/service-role/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "AWSServiceRoleForTrustedAdvisor"
resource "aws_iam_role" "AWSServiceRoleForTrustedAdvisor" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "trustedadvisor.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Access for the AWS Trusted Advisor Service to help reduce cost, increase performance, and improve security of your AWS environment."
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"]
  max_session_duration  = 3600
  name                  = "AWSServiceRoleForTrustedAdvisor"
  name_prefix           = null
  path                  = "/aws-service-role/trustedadvisor.amazonaws.com/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "AWSServiceRoleForRDS"
resource "aws_iam_role" "AWSServiceRoleForRDS" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "rds.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Allows Amazon RDS to manage AWS resources on your behalf"
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::aws:policy/aws-service-role/AmazonRDSServiceRolePolicy"]
  max_session_duration  = 3600
  name                  = "AWSServiceRoleForRDS"
  name_prefix           = null
  path                  = "/aws-service-role/rds.amazonaws.com/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "roleec2-s3"
resource "aws_iam_instance_profile" "roleec2-s3" {
  name        = "roleec2-s3"
  name_prefix = null
  path        = "/"
  role        = "roleec2-s3"
  tags        = {}
  tags_all    = {}
}

# __generated__ by Terraform from "AWSServiceRoleForElasticBeanstalk"
resource "aws_iam_role" "AWSServiceRoleForElasticBeanstalk" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "elasticbeanstalk.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = null
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::aws:policy/aws-service-role/AWSElasticBeanstalkServiceRolePolicy"]
  max_session_duration  = 3600
  name                  = "AWSServiceRoleForElasticBeanstalk"
  name_prefix           = null
  path                  = "/aws-service-role/elasticbeanstalk.amazonaws.com/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "ecsInstanceRole"
resource "aws_iam_instance_profile" "ecsInstanceRole" {
  name        = "ecsInstanceRole"
  name_prefix = null
  path        = "/"
  role        = "ecsInstanceRole"
  tags        = {}
  tags_all    = {}
}

# __generated__ by Terraform from "AWSServiceRoleForBackup"
resource "aws_iam_role" "AWSServiceRoleForBackup" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "backup.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = null
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::aws:policy/aws-service-role/AWSBackupServiceLinkedRolePolicyForBackup"]
  max_session_duration  = 3600
  name                  = "AWSServiceRoleForBackup"
  name_prefix           = null
  path                  = "/aws-service-role/backup.amazonaws.com/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}
