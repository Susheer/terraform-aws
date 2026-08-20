terraform {
    backend "s3" {
        bucket = "remote-backend-storage-bucket"
        region = "ap-south-1"
        key = "dev/terraform.tfstate"
        encrypt = true
        use_lockfile = true
    }
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