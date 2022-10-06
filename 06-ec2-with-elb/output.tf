# output "aws_default_vpc_details" {
#   value = aws_default_vpc.default
# }


output "aws_instance_ids" {
  value = values(aws_instance.http_servers).*.id
}

output "aws_elb_dns" {
  value = aws_elb.elb
}