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
  region = "ap-south-1"
}

module "vpc_b" {
  source = "./module_1"
}

output "vpc_info" {
  value = module.vpc_b.vpc_info
}
