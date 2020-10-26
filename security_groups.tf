# https://www.unixdaemon.net/cloud/managing-aws-vpc-default-security-group-terraform/
# https://stackoverflow.com/questions/55023605/aws-and-terraform-default-egress-rule-in-security-group


# Default SG 
resource "aws_default_security_group" "default" {
  vpc_id = aws_vpc.main.id
    tags = {
    Name = "default_sg"
  }
}

resource "aws_security_group_rule" "i_default" {
  type            = "ingress"
  from_port       = 0
  to_port         = 0
  protocol        = "-1"
  cidr_blocks     = ["0.0.0.0/32"]
  security_group_id = aws_default_security_group.default.id
}

resource "aws_security_group_rule" "e_defaultout" {
  type            = "egress"
  from_port       = 0
  to_port         = 0
  protocol        = "-1"
  cidr_blocks     = ["0.0.0.0/32"]
  security_group_id = aws_default_security_group.default.id
}



# SG for ALB
resource "aws_security_group" "website_sg" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "website_sg"
  }
}

resource "aws_security_group_rule" "i_website_sg" {
  type            = "ingress"
  from_port       = 80
  to_port         = 80
  protocol        = "tcp"
  cidr_blocks     = ["0.0.0.0/32"]
  security_group_id = aws_security_group.website_sg.id
}

resource "aws_security_group_rule" "e_website_sg" {
  type            = "egress"
  from_port       = 0
  to_port         = 0
  protocol        = "-1"
  cidr_blocks     = ["0.0.0.0/32"]
  security_group_id = aws_security_group.website_sg.id
}



# Instance SG
resource "aws_security_group" "instance_sg" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "instance_sg"
  }
}

resource "aws_security_group_rule" "i_instance_sg" {
  type            = "ingress"
  from_port       = 22
  to_port         = 22
  protocol        = "tcp"
  cidr_blocks     = ["0.0.0.0/32"]
  security_group_id = aws_security_group.instance_sg.id
}

resource "aws_security_group_rule" "e_instance_sg" {
  type            = "egress"
  from_port       = 0
  to_port         = 0
  protocol        = "-1"
  cidr_blocks     = ["0.0.0.0/32"]
  security_group_id = aws_security_group.instance_sg.id
}