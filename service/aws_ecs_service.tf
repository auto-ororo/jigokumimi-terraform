resource "aws_ecs_service" "jigokumimi-service" {
  name            = "jigokumimi-service"
  cluster         = aws_ecs_cluster.jigokumimi-ecs-cluster.id
  task_definition = aws_ecs_task_definition.jigokumimi-task.arn
  # task_definition = "${aws_ecs_task_definition.jigokumimi-task.family}:${max("${aws_ecs_task_definition.jigokumimi-task.revision}", "${aws_ecs_task_definition.jigokumimi-task.revision}")}"
  desired_count   = 1
  launch_type     = "EC2"

  load_balancer {
    target_group_arn = aws_lb_target_group.http.arn
    container_name   = "nginx"
    container_port   = "80"
  }
}
