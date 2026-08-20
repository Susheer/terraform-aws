terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 6.0"
        }
    }
}

provider "aws" {
    region = "ap-south-1"
    profile = "terraform"
}

resource "aws_s3_bucket" "backend-storage" {
    bucket = "remote-backend-storage-bucket"
    force_destroy= true
    tags = {
        team = "DevOps"
        backend = "backend-storage"
        version = "v1"
    }
}