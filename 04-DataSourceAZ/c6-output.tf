#Terraform Output Values

#EC2 Instance PublicIP with TOSET
output "instance_publicip" {
  description = "EC2 Instance publiuc IP"
  #value = aws_instance.mynewec2[*].public_ip  #Latest Splat
  value = toset([for instance in aws_instance.mynewec2: instance.public_ip])
}

#EC2 Instance PublicIP with TOSET
output "instance_publicdns" {
  description = "EC2 Instance publiuc DNS"
  #value = aws_instance.mynewec2[*].public_dns  #Latest Splat
  value = toset([for instance in aws_instance.mynewec2: instance.public_dns])
}

#EC2 Instance Publicdns with TOMAP
output "instance_publicdns2" {
  value = tomap({ for az, instance in aws_instance.mynewec2: az => instance.public_dns})
}

#EC2 Instance PublicIP with TOMAP
output "instance_publicip2" {
  value = tomap({ for az, instance in aws_instance.mynewec2: az => instance.public_ip})
}