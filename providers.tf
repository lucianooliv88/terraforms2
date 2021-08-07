provider "aws" {
  region = "eu-west-2"
  alias = "dev"
  profile = "default"
}

provider "aws" {
  region = "eu-west-1"
  alias = "prod"
  profile = "default"
}