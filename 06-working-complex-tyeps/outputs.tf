output "Developers" {
    description = "Developers created"
    value = aws_iam_user.Developers[*].name
}

output "Hr" {
    description = "A group is created to ref HR"
    value = aws_iam_user.HRs[*].name
}

