#Input Variables
#AWS Region
variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type        = string
  default     = "us-east-1"
}

# AWS EC2 Instance Type
variable "instance_type_def" {
  description = "EC2 Instnace Type"
  type = string
  default = "t2.micro"
}

#AWS EC2 Instance Type -List
variable "instance_type_list" {
  description = "EC2 instance type list"
  type        = list(string)
  default     = ["t3.micro", "t3.small", "t3.large"]
}

#AWS EC2 Instance Type -Map
variable "instance_type_map" {
  description = "EC2 instance type Map"
  type        = map(string)
  default = {
    "dev" = "t3.micro"
    "qa"  = "t3.small"
  "prod" = "t3.large" }
}

#AWS EC2 instances keypair
variable "instance_keypair" {
  description = "EC2 Instance Keypair"
  type        = string
  default     = "latestNV"
}
