resource "aws_s3_bucket" "backend-storage" {
    bucket = "state-file-bucket"
    tags = {
        team = "DevOps"
    }
}