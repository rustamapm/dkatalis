output "instance_ids" {
  description = "The IDs of the EC2 instances"
  value       = aws_instance.ec2_instances[*].id
}

output "public_dns" {
  description = "The DNS of the EC2 instances"
  value       = aws_instance.ec2_instances[*].public_dns
}

output "private_ips" {
  description = "The private IP addresses of the EC2 instances"
  value       = aws_instance.ec2_instances[*].private_ip
}

output "security_group_id" {
  description = "The ID of the security group"
  value       = aws_security_group.ec2_sg.id
}
