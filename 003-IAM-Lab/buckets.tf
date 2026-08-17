resource "aws_s3_bucket" "throw-away-bucket-v1" {
    bucket = "throw-away-bucket-v1"
    tags = {
        Name = "Demo"
        Environment = "Research and Development"
    } 
}