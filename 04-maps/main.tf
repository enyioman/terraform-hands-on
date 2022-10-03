provider "aws" {
  region = "us-east-1"
}

variable "users" {
  default = {
    jones : { country : "USA", department : "Finance" },
    ken : { country : "Canada", department : "Dev" },
    bill : { country : "Nigeria", department : "Legal" }
  }
}



resource "aws_iam_user" "my_terraform_users" {
  for_each = var.users
  name     = each.key
  tags = {
    # country: each.value
    country : each.value.country
    department : each.value.department
  }
}
