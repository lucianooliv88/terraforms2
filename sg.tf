## Security Group##
resource "aws_security_group" "my-SG-AllowingAll" {
  name        = "test-sg"
  description = "my-SG-AllowingAll"

  dynamic "ingress" {
    for_each = var.default_ingress
    content {
      description = ingress.value["description"]
      from_port   = ingress.key
      to_port     = ingress.key
      protocol    = "tcp"
      cidr_blocks = ingress.value["cidr_blocks"]
    }
  }

  tags = {
    Name = "my-SG-AllowingAll"
  }
}

terraform {
  backend "s3" {
    bucket = "tfstate007"
    key    = "sg/terraform.state"
    region = "eu-west-2"
    profile = "default"
  }
}
