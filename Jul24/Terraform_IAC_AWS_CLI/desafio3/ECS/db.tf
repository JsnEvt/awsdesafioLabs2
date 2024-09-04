resource "aws_db_instance" "biadbnv" {
  allocated_storage           = 20
  allow_major_version_upgrade = null
  apply_immediately           = null
  auto_minor_version_upgrade  = false
  availability_zone           = "us-east-1f"
  backup_retention_period     = 0
  backup_target               = "region"
  backup_window               = "09:16-09:46"
  ca_cert_identifier          = "rds-ca-rsa2048-g1"
  character_set_name          = null
  copy_tags_to_snapshot       = true
  custom_iam_instance_profile = null
  customer_owned_ip_enabled   = false
  db_name                     = "biadbnv"
  db_subnet_group_name        = "default-vpc-038a32576faa90bfb"
  dedicated_log_volume        = false
  delete_automated_backups    = true
  deletion_protection         = false
  domain                      = null
  domain_auth_secret_arn      = null
  # domain_dns_ips                        = []
  domain_fqdn                     = null
  domain_iam_role_name            = null
  domain_ou                       = null
  enabled_cloudwatch_logs_exports = []
  engine                          = "postgres"
  engine_lifecycle_support        = "open-source-rds-extended-support"
  # engine_version                        = jsonencode(14.10)
  final_snapshot_identifier             = null
  iam_database_authentication_enabled   = false
  identifier                            = "biadbnv"
  identifier_prefix                     = null
  instance_class                        = "db.t3.micro"
  iops                                  = 0
  kms_key_id                            = null
  license_model                         = "postgresql-license"
  maintenance_window                    = "thu:07:30-thu:08:00"
  manage_master_user_password           = null
  master_user_secret_kms_key_id         = null
  max_allocated_storage                 = 0
  monitoring_interval                   = 0
  monitoring_role_arn                   = null
  multi_az                              = false
  nchar_character_set_name              = null
  network_type                          = "IPV4"
  option_group_name                     = "default:postgres-14"
  parameter_group_name                  = "default.postgres14"
  password                              = null # sensitive
  performance_insights_enabled          = false
  performance_insights_kms_key_id       = null
  performance_insights_retention_period = 0
  port                                  = 5432
  publicly_accessible                   = false
  replica_mode                          = null
  replicate_source_db                   = null
  skip_final_snapshot                   = true
  snapshot_identifier                   = null
  storage_encrypted                     = false
  storage_throughput                    = 0
  storage_type                          = "gp2"
  tags                                  = {}
  tags_all                              = {}
  timezone                              = null
  upgrade_storage_config                = null
  username                              = "postgres"
  vpc_security_group_ids                = ["sg-09b26e093d784bb3d"]
}

resource "aws_db_subnet_group" "bia" {
  name       = "bia-subnet-group"
  subnet_ids = [local.subnet_zona_a, local.subnet_zona_b, local.subnet_zona_f]

  tags = {
    name = "bia-subnet-group"
  }
}
