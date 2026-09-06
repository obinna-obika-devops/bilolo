variable "name" { type = string }
variable "vpc_id" { type = string }
variable "subnet_ids" { type = list(string) }

resource "aws_db_subnet_group" "this" {
  name = "${var.name}-db"
  subnet_ids = var.subnet_ids
}

resource "aws_db_instance" "this" {
  identifier = var.name
  engine = "postgres"
  instance_class = "db.t3.micro"
  allocated_storage = 20
  db_name = "app"
  username = "app_admin"
  manage_master_user_password = true
  db_subnet_group_name = aws_db_subnet_group.this.name
  publicly_accessible = false
  skip_final_snapshot = true
}

output "endpoint" { value = aws_db_instance.this.address }
