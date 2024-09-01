output "rds_endpoint" {
  description = "Endpoint do RDS"
  value       = aws_db_instance.biadbnv.endpoint
}

output "rds_secrets" {
  description = "Secrets associada ao RDS"
  value       = tolist(aws_db_instance.biadbnv.master_user_secret)[0].secret_arn
}
