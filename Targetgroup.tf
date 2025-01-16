resource "aws_lb_target_group" "ip-example" {
  name        = "tf-example-lb-tg"
  port        = 80
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = aws_vpc.dev_vpc.id

  tags = {
    Name = "tf-example-lb-tg"
  }
}
