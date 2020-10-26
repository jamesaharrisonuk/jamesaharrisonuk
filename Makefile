all: init plan apply
 
init: clear
	terraform init

plan: clear
	terraform plan -no-color -out=/tmp/terraform-run

apply: clear
	terraform apply -auto-approve -no-color /tmp/terraform-run

plan-apply: clear
	terraform plan -no-color -out=/tmp/terraform-run
	terraform apply -auto-approve -no-color /tmp/terraform-run

.PHONY: clean
clean: clear
	terraform destroy -auto-approve
	rm -rf .terraform

clear:
	clear
