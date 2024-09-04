resource "aws_iam_instance_profile" "role_acesso_ssm" {
  name        = "role-acesso-ssm-nv"
  name_prefix = null
  path        = "/"
  role        = null
  tags        = {}
  tags_all    = {}
}

resource "aws_iam_instance_profile" "role_acesso_ssm_nv" {
  name        = "role-acesso-ssm-nv"
  name_prefix = null
  path        = "/"
  role        = aws_iam_role.role_acesso_ssm_nv.name
  tags        = {}
  tags_all    = {}
}

resource "aws_iam_role" "role_acesso_ssm_nv" {
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
  name                  = "role-acesso-ssm-nv"
  name_prefix           = null
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
  inline_policy {
    name = "policy-get-secret-rds-bia"
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

resource "aws_iam_role_policy_attachment" "role_acesso_ssm_nv_policy" {
  role       = aws_iam_role.role_acesso_ssm_nv.name
  policy_arn = aws_iam_policy.get_secret_biadbnv.arn
}
