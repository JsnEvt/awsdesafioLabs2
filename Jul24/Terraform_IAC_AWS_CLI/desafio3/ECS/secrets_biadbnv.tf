data "aws_secretsmanager_secret" "biadbnv" {
  arn = tolist(aws_db_instance.biadbnv.master_user_secret)[0].secret_arn
}
