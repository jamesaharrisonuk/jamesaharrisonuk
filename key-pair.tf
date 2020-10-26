# https://registry.terraform.io/modules/terraform-aws-modules/key-pair/aws/latest

# This EC2 key pair will not be created
resource "aws_key_pair" "this" {
  key_name   = "website"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDOoYT5oNiy9qLxd0xfhbwOrIoPKfCil4z0A+tduPGj7oiMfuLFvu5XYxR76MDRpbKLT0pQff7P+WdP3C8ag79A5On9EWiit3Qe7qHFY0pNom2YN5psUtGbPeohdoxFjkplQ9h6YMiio+/W6raj0mY8OU/au6efZFe9xDWRjV/r2ZWflMoyVeJrKeZ7a5oIScOZnfGfGaHcduhkX1/JroO9FnSog/pMDGIne6A6UvOjN7soIVe+eNF9kgUjl3K1doerBxMV56UAEUViTrXJfwWukb3/MvNrGj2UoBx+p5CLH/ouLPfX75p86sc4fnMw1jN5Hg65ouDI0yVVC/+BWfqX jamesaharrisonuk"
}



# key_pair = {
#   "arn" = "arn:aws:ec2:eu-west-1:376621981187:key-pair/website"
#   "fingerprint" = "dc:78:6c:f5:51:e6:0c:f9:33:86:65:84:80:b7:1d:6a"
#   "id" = "website"
#   "key_name" = "website"
#   "key_pair_id" = "key-00dd25a168b08b3ed"
#   "public_key" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDOoYT5oNiy9qLxd0xfhbwOrIoPKfCil4z0A+tduPGj7oiMfuLFvu5XYxR76MDRpbKLT0pQff7P+WdP3C8ag79A5On9EWiit3Qe7qHFY0pNom2YN5psUtGbPeohdoxFjkplQ9h6YMiio+/W6raj0mY8OU/au6efZFe9xDWRjV/r2ZWflMoyVeJrKeZ7a5oIScOZnfGfGaHcduhkX1/JroO9FnSog/pMDGIne6A6UvOjN7soIVe+eNF9kgUjl3K1doerBxMV56UAEUViTrXJfwWukb3/MvNrGj2UoBx+p5CLH/ouLPfX75p86sc4fnMw1jN5Hg65ouDI0yVVC/+BWfqX jamesaharrisonuk"
#   "tags" = {}
# }