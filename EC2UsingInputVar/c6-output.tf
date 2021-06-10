#Terraform Output Values

# EC2 Instance Public IP
output "instance_publicip" {
    description = "EC2 instance public IP"
    value = aws_instance.mynewec2.public_ip
}

# EC2 Instance Public DNS
output "instance_publicdns" {
    description = "EC2 instance public DNS"
    value = aws_instance.mynewec2.public_dns
}