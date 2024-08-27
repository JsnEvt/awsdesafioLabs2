resource "aws_lb" "bia-alb" {
  name               = "bia-alb"
  load_balancer_type = "application"
  subnets            = [local.subnet_zona_a,local.subnet_zona_b]
  security_groups    = [aws_security_group.bia-alb.id]
}