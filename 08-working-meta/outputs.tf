output "Developers" {
    description = "Developers created"
    value = [
        for key, value in var.Users:
        aws_iam_user.Users[key].name
        if value.Department == "Developers"
    ]
}

output "HR" {
    description = "A group is created to ref HR"
    value = [
        for key,value in var.Users:
        aws_iam_user.Users[key].name
        if value.Department == "Human Resource"
    ]
}

