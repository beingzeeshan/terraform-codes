terraform {
  required_version = "~>1.0.0"
  required_providers {
      aws = {
          source="hashicorp/aws"
          version="~>3.0"
      }
  }
}
terraform {
  backend "s3" {
    bucket = "bucketname"
    key    = "tfstates/terraform.tfstate"
    region = "us-east-2"
  }
}

provider "aws" {
  region = var.region
}
