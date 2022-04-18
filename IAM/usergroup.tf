# ========== IAM User Group ==========

resource "aws_iam_group" "Admin" {
    name      = "Admin"
}

resource "aws_iam_group" "Developer" {
    name      = "Developer"
}

resource "aws_iam_group" "Cloud-Engineer" {
    name      = "Cloud-Engineer"
}

resource "aws_iam_group" "SRE" {
    name      = "SRE"
}

resource "aws_iam_group" "QA" {
    name      = "QA"
}

resource "aws_iam_group" "BA" {
    name      = "BA"
}
