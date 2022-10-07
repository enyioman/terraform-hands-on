//S3 bucket

resource "aws_s3_bucket" "yorma_backend_state" {
  bucket = "yorma-backend-state"

  lifecycle {
    prevent_destroy = true
  }

}

resource "aws_s3_bucket_versioning" "my_bucket_versioning" {
  bucket = aws_s3_bucket.yorma_backend_state.id
  versioning_configuration {
    status = "Enabled"
  }
}


resource "aws_s3_bucket_server_side_encryption_configuration" "S3_encryption" {
  bucket = aws_s3_bucket.yorma_backend_state.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

//Locking

resource "aws_dynamodb_table" "yorma_backend_lock" {
  name         = "yorma-backend-locks"
  billing_mode = "PAY_PER_REQUEST"

  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}