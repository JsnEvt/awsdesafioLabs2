output "instance_id" {
  description = "ID da EC2"
  value       = aws_instance.bia_dev.id
}

output "instance_type" {
  description = "Tipo da EC2"
  value       = aws_instance.bia_dev.instance_type
}

output "instance_security_groups" {
  description = "SG da EC2"
  value       = aws_instance.bia_dev.security_groups
}

output "instance_public_id" {
  description = "IP publico da EC2"
  value       = aws_instance.bia_dev.public_ip
}

output "db_instance_status" {
  description = "The RDS instance status"
  value       = aws_db_instance.bia.status
}

output "rds_endpoint" {
  description = "Endpoint do RDS da Bia"
  value       = aws_db_instance.bia.endpoint
}

output "db_instance_engine_version" {
  description = "Versão do database" 
  value = aws_db_instance.bia.engine_version
}

output "rds_secrets" {
  description = "Secrets associado ao RDS da Bia"
  value       = tolist(aws_db_instance.bia.master_user_secret)[0].secret_arn
}

output "bia_repo_url" {
  value = aws_ecr_repository.bia.repository_url
}

output "rds_secret_name" {
  description = "Nome do meu segredo"
  value = data.aws_secretsmanager_secret.bia_db.name
}