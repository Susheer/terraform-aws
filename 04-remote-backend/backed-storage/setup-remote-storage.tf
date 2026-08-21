terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 6.0"
        }
    }
}

provider "aws" {
    region = var.region
    profile = "terraform"
}

resource "aws_s3_bucket" "backend-storage" {
    bucket = var.bucket
    force_destroy= true
    tags = {
        team = var.team
        version = var.config_version
    }
}