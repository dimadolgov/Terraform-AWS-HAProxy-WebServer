# Output the "Name" tag of the EC2 web server instances
output "Name" {
  value = aws_instance.ec2_web_server[*].tags.Name
}

# Output the instance IDs of the EC2 web server instances
output "instance_ids" {
  value = aws_instance.ec2_web_server[*].id
}

# Output the private IP addresses of the EC2 web server instances
output "private_ip_addresses" {
  value = aws_instance.ec2_web_server[*].private_ip
}

# Output the public IP addresses of the EC2 web server instances
output "public_ip_addresses" {
  value = aws_instance.ec2_web_server[*].public_ip
}

# Output a list of all private IP addresses of the EC2 web server instances
output "instance_ip" {
  value = aws_instance.ec2_web_server.*.private_ip
}

# Output a list of all "Name" tags of the EC2 web server instances
output "instance_name" {
  value = aws_instance.ec2_web_server.*.tags.Name
}
