resource "aws_iam_user" "Rajesh" {
    name = "Rajesh"
    tags = {
        Team = "Developer"
    }
}

resource "aws_iam_user" "KishanSharma" {
    name = "RajeshSharma"
    tags = {
        Team = "Developer"
    }
}

resource "aws_iam_user" "Sandeep" {
    name = "Sandeep"
    tags = {
        Team = "Developer"
    }
}
