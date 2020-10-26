variable "aws_region" {
	description = "AWS Region"
	type = string
	default = "eu-west-1"
}

variable "aws_route53_zone" {
	description = "Route53 DNS zone"
	type = string
	default = "jamesaharrisonuk.co.uk"
}

variable "subnet_cidrs_public" {
  description = "Subnet CIDRs for public subnets (length must match configured availability_zones)"
  default = ["10.0.1.0/24", "10.0.2.0/24"]
  type = list
}

variable "availability_zones" {
  description = "AZs in this region to use"
  default = ["eu-west-1a", "eu-west-1b"]
  type = list
}