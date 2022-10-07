terraform {
  backend "s3" {
    bucket = "yorma-backend-state"
    key = "yorma/backend-state/dev/users"
    region = "us-east-1"
    dynamodb_table = "yorma-backend-locks"
    encrypt = true
  }
}

provider "aws" {
    region = "us-east-1"
}


