//terraform plan -generate-config-out=out_sg.tf
import {
  id = "sg-0bfbf232ddbcbb72d"
  to = aws_security_group.bia_db
}

import {
  id = "sg-08f863242876a1c9d"
  to = aws_security_group.bia_web
}

import {
  id = "sg-039a6a9dddee0362e"
  to = aws_security_group.bia_ec2
}

import {
  id = "sg-0aeb002cf6726ea4c"
  to = aws_security_group.bia_alb
}

import {
  id = "sg-07331bd54e8ae2ea3"
  to = aws_security_group.bia_beanstalk
}
