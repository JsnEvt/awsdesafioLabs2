# data "aws_iam_instance_profile" "role-acesso-ssm" {
#   name = "role-acesso-ssm"
# name_prefix = null
# path = "/"
# role        = "role-acesso-ssm"
# tags        = {}
# tags_all    = {}
# }

# resource "aws_iam_role" "role-acesso-ssm" {
#   assume_role_policy = jsonencode({
#     Statement = [{
#       Action = "sts:AssumeRole"
#       Effect = "Allow"
#       Principal = {
#         Service = "ec2.amazonaws.com"
#       }
#     }]
#     Version = "2012-10-17"
#   })
#   description           = null
#   force_detach_policies = false
#   managed_policy_arns   = ["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess", "arn:aws:iam::aws:policy/AmazonECS_FullAccess", "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore", "arn:aws:iam::aws:policy/SecretsManagerReadWrite"]
#   max_session_duration  = 3600
#   name                  = "role-acesso-ssm"
#   name_prefix           = null
#   path                  = "/"
#   permissions_boundary  = null
#   tags                  = {}
#   tags_all              = {}
#   inline_policy {
#     name = "policy-get-secret-rds"
#     policy = jsonencode({
#       Statement = [{
#         Action   = ["secretsmanager:GetSecretValue"]
#         Effect   = "Allow"
#         Resource = ["arn:aws:secretsmanager:us-east-1:905418339132:secret:rds!db-1f79395a-f557-470b-b647-5173dcf3310f-8t79tk"]
#       }]
#       Version = "2012-10-17"
#     })
#   }
# }
