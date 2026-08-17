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
    region =  "ap-south-1"
}

resource "aws_iam_group" "developers" {
    name = "developers"
}