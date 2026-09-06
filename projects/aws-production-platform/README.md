# AWS Production Platform

A production-style AWS foundation expressed entirely as Terraform. It emphasizes private networking, least-privilege boundaries, managed data services, and repeatable validation.

## Architecture

VPC → private subnets → application compute → managed PostgreSQL. The public edge should be added through an ALB module in a deployment environment; this core module keeps networking and state concerns isolated.

## Safety

No credentials are committed. The example database uses AWS-managed master-password storage. Replace example AMI IDs with region-appropriate images before deployment.

## Validate

```bash
terraform fmt -check -recursive
terraform init -backend=false
terraform validate
```
