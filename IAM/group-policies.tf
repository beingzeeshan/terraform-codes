# ========== IAM Group Policies ==========

resource "aws_iam_group_policy_attachment" "Admin" {
  for_each = toset([
    "arn:aws:iam::aws:policy/AdministratorAccess"
  ])
  group      = "${aws_iam_group.Admin.name}"
  policy_arn = each.value
}

resource "aws_iam_group_policy_attachment" "Developer" {
  for_each = toset([
    "arn:aws:iam::account-no:policy/Assume-role-policy",
    "arn:aws:iam::account-no:policy/MFA",
    "arn:aws:iam::account-no:policy/s3-rds-developer-access",
    "arn:aws:iam::aws:policy/IAMUserChangePassword"
  ])
  group      = "${aws_iam_group.Developer.name}"
  policy_arn = each.value
}

resource "aws_iam_group_policy_attachment" "Cloud-Engineer" {
  for_each = toset([
    "arn:aws:iam::account-no:policy/ec2-devops-admin",
    "arn:aws:iam::account-no:policy/quicksight-devops-admin",
    "arn:aws:iam::account-no:policy/route53-iam-rds-devops-admin",
    "arn:aws:iam::account-no:policy/s3-devops-admin",
    "arn:aws:iam::account-no:policy/ses-cloudwatch-devops-admin"
  ])
  group      = "${aws_iam_group.Cloud-Engineer.name}"
  policy_arn = each.value
}

resource "aws_iam_group_policy_attachment" "SRE" {
  for_each = toset([
    "arn:aws:iam::account-no:policy/cloudwatch-readonly",
    "arn:aws:iam::account-no:policy/ec2-devops-read-only",
    "arn:aws:iam::account-no:policy/elb-devops-readonly",
    "arn:aws:iam::account-no:policy/MFA",
    "arn:aws:iam::account-no:policy/s3-rds-devops-read-only",
    "arn:aws:iam::account-no:policy/ses-route53-quicksight-devops-read-only",
    "arn:aws:iam::aws:policy/IAMUserChangePassword"
  ])
  group      = "${aws_iam_group.SRE.name}"
  policy_arn = each.value
}

resource "aws_iam_group_policy_attachment" "QA" {
  for_each = toset([
    "arn:aws:iam::account-no:policy/Assume-role-policy",
    "arn:aws:iam::account-no:policy/QuicksightIAMBasedAccessPolicy",
    "arn:aws:iam::aws:policy/service-role/AWSQuickSightListIAM",
    "arn:aws:iam::aws:policy/service-role/AWSQuicksightAthenaAccess",
    "arn:aws:iam::aws:policy/service-role/QuickSightAccessForS3StorageManagementAnalyticsReadOnly",
    "arn:aws:iam::aws:policy/service-role/AWSQuickSightDescribeRDS",
    "arn:aws:iam::aws:policy/service-role/AWSQuickSightSageMakerPolicy"
  ])
  group      = "${aws_iam_group.QA.name}"
  policy_arn = each.value
}

resource "aws_iam_group_policy_attachment" "BA" {
  for_each = toset([
    "arn:aws:iam::account-no:policy/cloudwatch-ses-devops",
    "arn:aws:iam::account-no:policy/ec2-devops",
    "arn:aws:iam::account-no:policy/iam-route53-rds-devops",
    "arn:aws:iam::account-no:policy/MFA",
    "arn:aws:iam::account-no:policy/s3-devops",
    "arn:aws:iam::aws:policy/IAMUserChangePassword"
  ])
  group      = "${aws_iam_group.BA.name}"
  policy_arn = each.value
}
