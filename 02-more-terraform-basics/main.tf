provider "aws" {
  region = "us-east-1"
}

variable "terraform_users_prefix" {
    default = "terraform_user"
}



resource "aws_iam_user" "my_terraform_users" {
  count = 3
  name  = "${var.terraform_users_prefix}_${count.index}"
}