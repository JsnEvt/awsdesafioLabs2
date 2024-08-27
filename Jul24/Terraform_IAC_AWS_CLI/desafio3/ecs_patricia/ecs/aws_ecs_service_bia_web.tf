resource "aws_ecs_service" "bia" {
  name            = "service-bia"
  cluster         = aws_ecs_cluster.cluster-bia.id
  task_definition = aws_ecs_task_definition.bia-web.arn
  desired_count   = 1

  capacity_provider_strategy {
    capacity_provider = aws_ecs_capacity_provider.bia.name
    base              = 1
    weight            = 100
  }

  ordered_placement_strategy {
    type  = "spread"
    field = "attribute:ecs.availability-zone"
  }
  deployment_minimum_healthy_percent = 0
  deployment_maximum_percent         = 100

  //faltou adicionar o bloco abaixo no ecs_service
  lifecycle {
    ignore_changes = [desired_count]
  }
}
