# https://registry.terraform.io/modules/terraform-aws-modules/autoscaling/aws/3.4.0/examples/asg_ec2
# https://medium.com/@ratulbasak93/aws-elb-and-autoscaling-using-terraform-9999e6266734

# https://medium.com/@ratulbasak93/aws-elb-and-autoscaling-using-terraform-9999e6266734

## Creating Launch Configuration
resource "aws_launch_configuration" "autoscale" {
  image_id      = data.aws_ami.latest_ecs.id
  instance_type = "t2.micro"

  associate_public_ip_address  = true
  key_name  = aws_key_pair.this.key_name

  security_groups = [
    aws_security_group.website_sg.id,
    aws_security_group.instance_sg.id
    ]

  user_data = <<-EOF
             #!/bin/bash
             echo "Hello, World" > index.html
             nohup busybox httpd -f -p 80 &
             EOF
  
  lifecycle {
    create_before_destroy = true
  }
}

## Creating AutoScaling Group
resource "aws_autoscaling_group" "alb" {
  count = length(aws_subnet.subnet_1)
  vpc_zone_identifier  = [element(aws_subnet.subnet_1.*.id, count.index)]

  health_check_type = "ELB"
  launch_configuration = aws_launch_configuration.autoscale.id    
  min_size             = 1
  max_size             = 2

  tag {
    key                 = "Name"
    value               = "jamesaharrisonuk.co.uk"
    propagate_at_launch = true
  }
}
