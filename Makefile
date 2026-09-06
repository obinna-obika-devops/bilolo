.PHONY: validate fmt
validate:
	terraform -chdir=projects/aws-production-platform/terraform init -backend=false
	terraform -chdir=projects/aws-production-platform/terraform validate
	terraform -chdir=projects/aws-production-platform/terraform fmt -check -recursive

fmt:
	terraform -chdir=projects/aws-production-platform/terraform fmt -recursive
