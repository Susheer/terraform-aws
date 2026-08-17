resource "aws_iam_user" "arvind" {
    name = "arvind"
    tags = {
        Team = "developer"
    }
}

resource "aws_iam_user" "binod" {
    name = "binod"
    tags = {
        Team = "developer"
    }
}

resource "aws_iam_user" "jay" {
    name = "jay"
    tags = {
        Team = "developer"
    }
}