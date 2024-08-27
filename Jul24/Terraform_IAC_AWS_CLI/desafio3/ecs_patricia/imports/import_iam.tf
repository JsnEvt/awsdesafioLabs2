//importação por bloco
//depois do import, deletar este arquivo  
//terraform plan -generate-config-out=out_iam.tf
import {
  id = "role-acesso-ssm"
  to = aws_iam_role.role_acesso_ssm
}

import {
  id = "role-acesso-ssm"
  to = aws_iam_instance_profile.role_acesso_ssm
}