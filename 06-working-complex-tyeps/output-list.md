aws_iam_group.developers: Creating...
aws_iam_group.HR: Creating...
aws_iam_user.Lakhwa: Creating...
aws_iam_user.Developers[1]: Creating...
aws_iam_user.Developers[0]: Creating...
aws_iam_user.pushpa: Creating...
aws_iam_user.Developers[2]: Creating...
aws_iam_user.Developers[0]: Creation complete after 2s [id=Sandeep]
aws_iam_user.pushpa: Creation complete after 2s [id=pushpa]
aws_iam_user.Developers[1]: Creation complete after 2s [id=Rajesh]
aws_iam_user.Developers[2]: Creation complete after 2s [id=KishanSharma]
aws_iam_group.developers: Creation complete after 2s [id=developers]
aws_iam_group.HR: Creation complete after 2s [id=HR]
aws_iam_group_membership.dev_members: Creating...
aws_iam_user.Lakhwa: Creation complete after 3s [id=Lakhwa]
aws_iam_group_membership.hr_members: Creating...
aws_iam_group_membership.dev_members: Creation complete after 2s [id=dev_members]
aws_iam_group_membership.hr_members: Creation complete after 1s [id=hr_members]

Apply complete! Resources: 9 added, 0 changed, 0 destroyed.

Outputs:

Developers = [
  "Sandeep",
  "Rajesh",
  "KishanSharma",
]
Hr = [
  "HR",
]