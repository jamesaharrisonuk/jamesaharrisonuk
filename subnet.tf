# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet

resource "aws_subnet" "subnet_1" {
  count = length(var.subnet_cidrs_public)
  vpc_id                  = aws_vpc.main.id
  map_public_ip_on_launch = true
  cidr_block              = var.subnet_cidrs_public[count.index] 
  availability_zone       = var.availability_zones[count.index] 
  tags = {
      Name = "AZ-1a"
    }
}