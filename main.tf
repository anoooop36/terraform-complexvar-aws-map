variable "access_key" {}
variable "secret_key" {}

variable "region" {
 default = "us-east-1"
}


provider "aws" {
 access_key = "${   var.access_key }"
 secret_key = var.secret_key
 region     = "${  var.region}"
 version    = ">= 3.0"
}

 resource "aws_ebs_volume" "awsEbsExample" {
  availability_zone = "us-east-1a"
  size              = var.sampleMap["size"]

  tags = {
    Name = var.sampleMap["tag1"]
  }
}
