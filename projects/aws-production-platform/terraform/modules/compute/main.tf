variable "name" { type = string }
variable "vpc_id" { type = string }
variable "private_subnet_ids" { type = list(string) }

resource "aws_security_group" "app" {
  name = "${var.name}-app"
  vpc_id = var.vpc_id
  ingress { from_port = 8080, to_port = 8080, protocol = "tcp", cidr_blocks = ["10.20.0.0/16"] }
  egress { from_port = 0, to_port = 0, protocol = "-1", cidr_blocks = ["0.0.0.0/0"] }
}

resource "aws_launch_template" "app" {
  name_prefix = "${var.name}-"
  image_id = "ami-0c02fb55956c7d316"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.app.id]
}

output "security_group_id" { value = aws_security_group.app.id }
