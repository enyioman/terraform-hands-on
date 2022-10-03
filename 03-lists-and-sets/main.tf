provider "aws" {
  region = "us-east-1"
}

variable "names" {
    default = ["devops", "uat", "prod"]
}



resource "aws_iam_user" "my_terraform_users" {
  #count = length(var.names)
  #name  = var.names[count.index]
  for_each = toset(var.names)
  name = each.value
}
