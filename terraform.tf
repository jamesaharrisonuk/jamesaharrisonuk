terraform {
  backend "s3" {
    bucket = "jamesaharrisonuk-co-uk"
    key    = "ec2/website-tfstate"
    encrypt = true
    region = "eu-west-1"
    }
}
