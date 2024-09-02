output "bia_repo_url" {
  value = aws_ecr_repository.bia.repository_url
}

output "rds_secret_name" {
  description = "Nome do secrego"
  value       = data.aws_secretsmanager_secret.biadbnv.name
}
