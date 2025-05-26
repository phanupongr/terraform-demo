terraform {
  required_version = ">= 1.10"
}

resource "local_file" "default" {
  file_permission = "0644"
  filename        = "hello.txt"

  # You can store the template in a file and use the templatefile function for
  # more modularity, if you prefer, instead of storing the template inline as
  # we do here.
  content = <<-EOT
  hello
  EOT
}

resource "aws_security_group" "unsecure_sg" {
  name        = "allow_all"
  description = "Allow all inbound traffic (not secure)"
  vpc_id      = "vpc-12345678"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}