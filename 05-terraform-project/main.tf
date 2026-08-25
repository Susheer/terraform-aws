resource "aws_iam_group" "developers" {
    name = "developers"
    path = "/users/"
}

resource "aws_iam_group" "HR" {
    name = "HR"
    path = "/users/"
}

resource "aws_iam_group_membership" "hr_members" {
    name = "hr_members"
    users = [
        aws_iam_user.Lakhwa.name,
        aws_iam_user.pushpa.name
    ]
    group = aws_iam_group.HR.name
}


resource "aws_iam_group" "developers" {
    name = "developers"
    path = "/users/"
}

resource "aws_iam_group" "HR" {
    name = "HR"
    path = "/users/"
}

resource "aws_iam_group_membership" "hr_members" {
    name = "hr_members"
    users = [
        aws_iam_user.Lakhwa.name,
        aws_iam_user.pushpa.name
    ]
    group = aws_iam_group.HR.name
}

resource "aws_iam_user" "Rajesh" {
    name = "Rajesh"
    tags = {
        Team = "Developer"
    }
}

resource "aws_iam_user" "KishanSharma" {
    name = "KishanSharma"
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


resource "aws_iam_group_membership" "dev_members" {
    name = "dev_members"
    group = aws_iam_group.developers.name
    users = [
        aws_iam_user.Sandeep.name,
        aws_iam_user.KishanSharma.name,
        aws_iam_user.Rajesh.name
    ]
}
