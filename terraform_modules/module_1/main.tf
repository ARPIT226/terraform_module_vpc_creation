terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
      }
    }

  required_version = ">= 1.2.0"
}

 provider "aws" {
  region  = "ap-south-1"
}

resource "aws_vpc" "vpc_a" {
    cidr_block = "10.0.0.0/16"

    tags = {
        Name = "vpc_a"
    }
}

output "vpc_info" {
  value = {
    vpc_id     = aws_vpc.vpc_a.id
    vpc_name   = aws_vpc.vpc_a.tags["Name"]
    cidr_block = aws_vpc.vpc_a.cidr_block
  }
}