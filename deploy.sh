#!/bin/bash -ex

terraform init
terraform plan -no-color -out=/tmp/terraform-run
terraform apply -auto-approve -no-color /tmp/terraform-run


