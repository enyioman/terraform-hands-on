output "aws_security_group_full_details" {
  value = aws_security_group.http_server_sg
}

output "aws_instance_full_details" {
  value = aws_instance.http_server
}

output "aws_instance_public_dns" {
  value = aws_instance.http_server.public_dns
}

output "aws_default_vpc_details" {
  value = aws_default_vpc.default
}