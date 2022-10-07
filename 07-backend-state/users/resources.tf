# resource "aws_s3_bucket" "my_s3_bucket" {
#     bucket = "my-s3-bucket-terraform-001"
#     # versioning {
#     #     enabled = true
#     # }
# }

# resource "aws_s3_bucket_versioning" "my_bucket_versioning" {
#     bucket = aws_s3_bucket.my_s3_bucket.id
#         versioning_configuration {
#           status = "Enabled"
#         }
# }

resource "aws_iam_user" "my_terraform_user" {
    name = "${terraform.workspace}_terraform-user2"
}
