variable "account" {
  default = "account-no"  
}

variable "region" {
  default = "us-east-2"  
}

variable "username" {
  type = "list"
  default = ["Adam","David","Moses"]
  }

variable "group" {
  type = "list"
  default = ["Admin","Developer","Cloud-Engineer","SRE","QA","BA"]
  }