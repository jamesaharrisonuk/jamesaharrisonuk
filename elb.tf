### Creating ELB
resource "aws_elb" "website_1" {
  count = length(var.subnet_cidrs_public)

  name                      = "website-elb-1"
  cross_zone_load_balancing = true

  subnets = [
    join(aws_subnet.subnet_1.*.id[count.index], ",")
  ]

  security_groups = [aws_security_group.website_sg.id]

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    interval            = 30
    target              = "HTTP:80/"
  }
  listener {
    lb_port           = 80
    lb_protocol       = "http"
    instance_port     = "80"
    instance_protocol = "http"
  }
}

# Create a new load balancer attachment
resource "aws_autoscaling_attachment" "asg_attachment_bar" {
  count                  = length(aws_elb.website_1)
  autoscaling_group_name = aws_autoscaling_group.alb.*.id[count.index]
  elb                    = aws_elb.website_1.*.id[count.index]
}
