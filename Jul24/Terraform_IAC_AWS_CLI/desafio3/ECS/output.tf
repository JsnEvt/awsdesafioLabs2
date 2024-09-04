output "bia_repo_url" {
  value = aws_ecr_repository.bia.repository_url
}

output "rds_secret_name" {
  description = "Nome do secrego"
  value       = data.aws_secretsmanager_secret.biadbnv.name
}

output "rds_endpoint" {
  description = "rds_endpoint"
  value       = aws_db_instance.biadbnv.endpoint
}

output "aws_lb" {
  description = "alb_url"
  value       = aws_lb.bia.dns_name
}
