terraform {
  required_version = ">= 1.4.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
  # CI will authenticate using OIDC; local dev can use profiles (optional)
}

# Minimal VPC placeholder (use module later)
resource "aws_vpc" "dev" {
  cidr_block = "10.10.0.0/16"
  tags = { Name = "dev-vpc" }
}

output "vpc_id" {
  value = aws_vpc.dev.id
}
