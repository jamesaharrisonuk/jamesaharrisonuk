# https://letslearndevops.com/2018/08/23/terraform-get-latest-centos-ami/
# https://www.hashicorp.com/blog/hashicorp-terraform-supports-amazon-linux-2
# https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/latest

data "aws_ami" "latest_ecs" {
most_recent = true
owners = ["591542846629"] # AWS

  filter {
      name   = "name"
      values = ["*amazon-ecs-optimized"]
  }

  filter {
      name   = "virtualization-type"
      values = ["hvm"]
  }  
}

# AMI = {
#   "architecture" = "x86_64"
#   "arn" = "arn:aws:ec2:eu-west-1::image/ami-01600e9277479e28f"
#   "block_device_mappings" = [
#     {
#       "device_name" = "/dev/xvda"
#       "ebs" = {
#         "delete_on_termination" = "true"
#         "encrypted" = "false"
#         "iops" = "0"
#         "snapshot_id" = "snap-002d1fc8b2f4c8d21"
#         "volume_size" = "8"
#         "volume_type" = "gp2"
#       }
#       "no_device" = ""
#       "virtual_name" = ""
#     },
#     {
#       "device_name" = "/dev/xvdcz"
#       "ebs" = {
#         "delete_on_termination" = "true"
#         "encrypted" = "false"
#         "iops" = "0"
#         "snapshot_id" = ""
#         "volume_size" = "22"
#         "volume_type" = "gp2"
#       }
#       "no_device" = ""
#       "virtual_name" = ""
#     },
#   ]
#   "creation_date" = "2020-10-15T19:22:40.000Z"
#   "description" = "Amazon Linux AMI amzn-ami-2018.03.20201013 x86_64 ECS HVM GP2"
#   "filter" = [
#     {
#       "name" = "name"
#       "values" = [
#         "*amazon-ecs-optimized",
#       ]
#     },
#     {
#       "name" = "virtualization-type"
#       "values" = [
#         "hvm",
#       ]
#     },
#   ]
#   "hypervisor" = "xen"
#   "id" = "ami-01600e9277479e28f"
#   "image_id" = "ami-01600e9277479e28f"
#   "image_location" = "amazon/amzn-ami-2018.03.20201013-amazon-ecs-optimized"
#   "image_owner_alias" = "amazon"
#   "image_type" = "machine"
#   "most_recent" = true
#   "name" = "amzn-ami-2018.03.20201013-amazon-ecs-optimized"
#   "owner_id" = "591542846629"
#   "owners" = [
#     "591542846629",
#   ]
#   "product_codes" = []
#   "public" = true
#   "root_device_name" = "/dev/xvda"
#   "root_device_type" = "ebs"
#   "root_snapshot_id" = "snap-002d1fc8b2f4c8d21"
#   "sriov_net_support" = "simple"
#   "state" = "available"
#   "state_reason" = {
#     "code" = "UNSET"
#     "message" = "UNSET"
#   }
#   "tags" = {}
#   "virtualization_type" = "hvm"
# }
