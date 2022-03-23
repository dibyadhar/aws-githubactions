terraform {
 backend "s3" {
    bucket = "amido-stacks-backend"
    key    = "compute"
    region = "eu-west-2"
  }

}

provider "aws" {
  version = "~>3.0"
  region  = "eu-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-060c4f2d72966500a"
  instance_type = "t2.micro"
}