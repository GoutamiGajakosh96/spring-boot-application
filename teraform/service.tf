resource "aws_ecs_service" "service" {
  name            = "SB-service"
  cluster         = aws_ecs_cluster.cluster.id
  task_definition = aws_ecs_task_definition.task.arn
  desired_count   = 1
  launch_type     = "FARGATE"

  network_configuration {
    subnets          = ["subnet-014fec8ecd082fa09","subnet-00674904bdce0498b"]
    assign_public_ip = true
  }
}