# Create Users 
resource "aws_iam_user" "Developers" {
    count = length(var.DevelopersName)
    name = var.DevelopersName[count.index]
    tags = var.Developers_Tags
}

resource "aws_iam_user" "HRs" {
    count = length(var.HRsName)
    name = var.HRsName[count.index]
    tags = var.HR_Tags
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
    users = aws_iam_user.HRs[*].name
    group = aws_iam_group.HR.name
}

resource "aws_iam_group_membership" "dev_members" {
    name = "dev_members"
    group = aws_iam_group.developers.name
    users = aws_iam_user.Developers[*].name
}
