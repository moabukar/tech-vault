provider "aws" {
  region = "us-east-1"
}

resource "aws_ecs_cluster" "my_cluster" {
  name = "my-cluster"
}

# ECS task definition for the app
resource "aws_ecs_task_definition" "app_task" {
  family                   = "my-app"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = "256"
  memory                   = "512"
  execution_role_arn       = aws_iam_role.ecs_execution_role.arn

  container_definitions = jsonencode([{
    name  = "my-app"
    image = "my-app-image"
    portMappings = [{
      containerPort = 80
      hostPort      = 80
    }]
  }])
}

# ECS task definition for Traefik
resource "aws_ecs_task_definition" "traefik_task" {
  family                   = "traefik"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = "256"
  memory                   = "512"
  execution_role_arn       = aws_iam_role.ecs_execution_role.arn

  container_definitions = jsonencode([{
    name  = "traefik"
    image = "traefik:v2.4"
    portMappings = [{
      containerPort = 80
      hostPort      = 80
    }, {
      containerPort = 443
      hostPort      = 443
    }, {
      containerPort = 8080
      hostPort      = 8080
    }]
  }])
}

# ECS Service
resource "aws_ecs_service" "my_service" {
  name            = "my-service"
  cluster         = aws_ecs_cluster.my_cluster.id
  task_definition = aws_ecs_task_definition.app_task.arn
  launch_type     = "FARGATE"
  desired_count   = 1

  network_configuration {
    subnets = ["subnet-xxxxxxx", "subnet-yyyyyyy"]
  }
}
