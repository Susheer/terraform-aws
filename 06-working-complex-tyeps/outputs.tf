output "Krishna" {
    description = "KishanSharma created under Developer"
    value = aws_iam_user.KishanSharma.name
}

output "Hr" {
    description = "A group is created to ref HR"
    value = [aws_iam_group.HR.name, aws_iam_user.KishanSharma.name]
}

