import {
  id = "role-acesso-ssm"
  to = aws_iam_role.role-acesso-ssm
}

import {
  id = "role-acesso-ssm"
  to = aws_iam_instance_profile.role-acesso-ssm
}

import {
  id = "sg-0716cf24045de3a22"
  to = aws_security_group.bia-alb
}

import {
  id = "sg-0a6c8835d649a7243"
  to = aws_security_group.ec2
}

import {
  id = "sg-0cd9cd3656b95f603"
  to = aws_security_group.ssh-local
}

import {
  id = "sg-025ecb927802d0bcd"
  to = aws_security_group.alb
}
