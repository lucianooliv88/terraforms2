data "aws_vpc" "default" {
  default = var.vpc_id == null ? true : false
  id      = "${var.vpc_id}"
}

data "aws_subnet_ids" "default" {
  vpc_id = data.aws_vpc.default.id
}

locals {
  region = lookup(var.region, terraform.workspace)
}

variable region {
  type = map(string)
  default = {
    default = "eu-west-2"
    dev = "eu-west-2"
    prod = "eu-west-1"
  }
}