# https://registry.terraform.io/providers/hashicorp/aws/2.59.0/docs/data-sources/internet_gateway

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id
  tags = { Name = "main" }
}
