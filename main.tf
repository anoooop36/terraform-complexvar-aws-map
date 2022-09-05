provider "aws" {
 access_key = var.access_key
 secret_key = var.secret_key
 region     = var.region
}  


resource "aws_ebs_volume" "awsEbsExampleWithMap" {
  availability_zone = "us-east-1a"
  size = var.sampleMap["size"]
  tags = {
    Name = var.sampleMap["tag"]
  }
}

variable "access_key" {}
variable "secret_key" {}

variable "region" {
 type    = string
 default = "us-east-1"
}


variable "sampleMap" {
  type = map(string)
  default = {
    size : "40"
    tag = "Dev ebs volume", 
  }
}
