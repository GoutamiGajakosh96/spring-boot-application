resource "aws_ecs_task_definition" "task" {
  family                   = "task-definition"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = "256"
  memory                   = "512"
  execution_role_arn       = aws_iam_role.ecs_task_execution_role.arn


  container_definitions = <<DEFINITION
  [
    {
      "name": "hello-world",
      "image": "211125733933.dkr.ecr.us-east-2.amazonaws.com/hello-world-njs:latest",
      "essential": true,
      "portMappings": [
        {
          "containerPort": 3000,
          "hostPort": 3000
        }
      ]
    }
  ]
  DEFINITION
}