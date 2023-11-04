provider "aws" {
  region = var.region
}

resource "aws_security_group" "techfood_sg" {
  name = "techfood_sg"
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_db_instance" "techfood" {
  engine                 = "mysql"
  identifier             = "techfood"
  allocated_storage      = 20
  engine_version         = "8.0.33"
  instance_class         = "db.t3.micro"
  username               = var.db_user_name
  password               = var.db_pwd
  db_name                = var.db_name
  parameter_group_name   = "default.mysql8.0"
  vpc_security_group_ids = ["${aws_security_group.techfood_sg.id}"]
  skip_final_snapshot    = true
  publicly_accessible    = true
}
