resource "aws_ecs_task_definition" "bia-web" {
  family        = "task-def-bia"
  network_mode  = "bridge"
  task_role_arn = aws_iam_role.ecs_task_role.arn

  container_definitions = jsonencode([{
    name             = "bia",
    image            = "${aws_ecr_repository.bia.repository_url}:latest",
    essential        = true
    portMappings     = [{ containerPort = 8080, hostPort = 80 }],
    cpu              = 1024
    memoryRservation = 400
    environment = [
      { name = "DB_PORT", value = "5432" },
      { name = "DB_HOST", value = "${aws_db_instance.biadbnv.address}" },
      { name = "DB_SECRET_NAME", value = "${data.aws_secretsmanager_secret.biadbnv.name}" },
      { name = "DB_REGION", value = "us-east-1" },
      { name = "DEBUG_SECRET", value = "true" },

    ]
    //as informacoes abaixo serve para geracao dos logs do cloudwatch
    logContiguration = {
      logDriver = "awslogs",
      options = {
        "awslogs-region"        = "us-east-1",
        "awslogs-group"         = aws_cloudwatch_log_group.ecs_bia_web.name,
        "awslogs-stream-prefix" = "applogbia"
      }
    },
  }])
  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }

}
