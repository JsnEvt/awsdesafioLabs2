resource "aws_instance" "bia_dev" {
  ami           = "ami-02f3f602d23f1659d"
  instance_type = "t3.micro"
  tags = {
    ambiente = "dev"
    Name     = "work-machine"
  }
  subnet_id                   = local.subnet_zona_a
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.bia-dev.id]
  root_block_device {
    volume_size = 12
  }
  iam_instance_profile = aws_iam_instance_profile.role_acesso_ssm_nv.name
  user_data            = file("userdata_biadev.sh")
  # key_name             = "" //key-pair
}
