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
