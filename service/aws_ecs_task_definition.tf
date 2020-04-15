resource "aws_ecs_task_definition" "jigokumimi-task" {
  family                = "jigokumimi-service"
  container_definitions = file("./container_definitions/service.json")
  execution_role_arn    = data.terraform_remote_state.aws_iam.outputs.ecs_task_role_arn
  task_role_arn         = data.terraform_remote_state.aws_iam.outputs.ecs_task_role_arn
  network_mode          = "bridge"
}

resource "aws_ecs_task_definition" "jigokumimi-migration-task" {
  family                = "jigokumimi-migration"
  container_definitions = file("./container_definitions/migration.json")
  execution_role_arn    = data.terraform_remote_state.aws_iam.outputs.ecs_task_role_arn
  task_role_arn         = data.terraform_remote_state.aws_iam.outputs.ecs_task_role_arn
  network_mode          = "bridge"
}
