resource "aws_iam_user" "pushpa" {
    name = "pushpa"
    tags = {
        Team = "HR"
    }
}

resource "aws_iam_user" "Lakhwa" {
    name = "Lakhwa"
    tags = {
        Team = "HR"
    }
}
