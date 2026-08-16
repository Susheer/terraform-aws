terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 6.0"
        }
    }
}

# AWS Provider Configuration
provider "aws" {
    region =  "us-east-1"
}