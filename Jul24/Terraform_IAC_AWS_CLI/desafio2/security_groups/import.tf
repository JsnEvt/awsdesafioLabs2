import {
  id = "role-acesso-ssm"
  to = aws_iam_instance_profile.role_acesso_ssm
}

import {
  id = "role-acesso-ssm"
  to = aws_iam_role.role_acesso_ssm
}

import {
  id = "ecsInstanceRole"
  to = aws_iam_instance_profile.ecsInstanceRole
}

import {
  id = "ecsInstanceRole"
  to = aws_iam_role.ecsInstanceRole
}
