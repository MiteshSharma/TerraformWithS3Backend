provider "aws" {
  access_key = "ACCESS_KEY_HERE"
  secret_key = "SECRET_KEY_HERE"
  region     = "us-east-2"
}

terraform {
  backend "s3" {
    bucket = "terraformbackend"
    key = "terraform"
    region = "us-east-2"
    dynamodb_table = "terraform-lock"
  }
}

variable "instance_type" {
 default = "t2.micro"
}

resource "aws_instance" "ec2_instance" {
 ami = "ami-0cf31d971a3ca20d6"
 instance_type = "${var.instance_type}"
}

output "ip" {
 value = "${aws_instance.ec2_instance.public_ip}"
}