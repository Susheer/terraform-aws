resource "aws_iam_user" "devOPS" {
    name = "sudheer"
    tags = {
        Team =  var.team
        Environment = var.env
    }
}

resource "aws_instance" "ec2-one"{
    ami = "ami-0ac7b260cf76d8865" # Amazon Linux 2023
    instance_type = "t3.micro"
    region = var.region
    tags = {
        Team = var.team
        Environment = var.env
    }
}

output "ec2-id" {
    value = aws_instance.ec2-one.id
}