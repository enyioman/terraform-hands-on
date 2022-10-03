output "my_s3_bucket_versioning" {
    value = aws_s3_bucket.my_s3_bucket.versioning[0].enabled
}

output "my_s3_complete_details" {
    value = aws_s3_bucket.my_s3_bucket
}

output "my_terraform_usercomplete_details" {
    value = aws_iam_user.my_terraform_user
}