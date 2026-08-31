# Create Users 
resource "aws_iam_user" "Users" {
    for_each = var.Users
    name = each.key
    tags = {
        Department = each.value.Department
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
        for username, user in var.Users :
        username
        if user.Department=="Human Resource"
    ]
    group = aws_iam_group.HR.name
}

resource "aws_iam_group_membership" "dev_members" {
    name = "dev_members"
    group = aws_iam_group.developers.name
    users = [
        for key, value in var.Users:
        key
        if value.Department == "Developers" 
    ]
}


#--------------------------------
# Ec2 Instances (Servers)
#---------------------------------

resource "aws_instance" "Servers" {
 for_each =  var.Servers
 ami =  var.ami
 instance_type =  each.value.instance_type
 tags =  {
    Name = each.key
 }
}