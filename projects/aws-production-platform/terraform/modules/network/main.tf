resource "aws_vpc" "this" {
  cidr_block = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = { Name = var.name }
}

variable "vpc_cidr" { type = string }
variable "name" { type = string }

output "vpc_id" { value = aws_vpc.this.id }
output "private_subnet_ids" { value = [for s in aws_subnet.private : s.id] }

resource "aws_subnet" "private" {
  count = 2
  vpc_id = aws_vpc.this.id
  cidr_block = cidrsubnet(var.vpc_cidr, 4, count.index + 2)
  availability_zone = data.aws_availability_zones.available.names[count.index]
  tags = { Name = "${var.name}-private-${count.index + 1}" }
}

data "aws_availability_zones" "available" { state = "available" }
