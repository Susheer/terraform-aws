# Create Users 
resource "aws_iam_user" "Developers" {
    count = length(var.DevelopersName)
    name = var.DevelopersName[count.index]
    tags = {
        Team = "Developer"
    }
}

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

# Create groups
resource "aws_iam_group" "developers" {
    name = "developers"
    path = "/users/"
}

resource "aws_iam_group" "HR" {
    name = "HR"
    path = "/users/"
}

# Assign users into the groups
resource "aws_iam_group_membership" "hr_members" {
    name = "hr_members"
    users = [
        aws_iam_user.Lakhwa.name,
        aws_iam_user.pushpa.name
    ]
    group = aws_iam_group.HR.name
}

resource "aws_iam_group_membership" "dev_members" {
    name = "dev_members"
    group = aws_iam_group.developers.name
    users = [
        aws_iam_user.Developers[0].name,
        aws_iam_user.Developers[1].name,
        aws_iam_user.Developers[2].name
    ]
}
