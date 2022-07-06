resource "aws_lb_target_group_attachment" "flask_api_tg_attach" {
  target_group_arn = aws_lb_target_group.flask_api_tg.id
  target_id        = data.aws_instances.launched_by_asg.ids[0]
}
