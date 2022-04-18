# ========== IAM User Group ==========

resource "aws_iam_group" "AdminGroup" {
    name      = "AdminGroup"
}

resource "aws_iam_group" "Developer" {
    name      = "Developer"
}

resource "aws_iam_group" "devops-admin" {
    name      = "devops-admin"
}

resource "aws_iam_group" "devops-readonly" {
    name      = "devops-readonly"
}

resource "aws_iam_group" "quicksight-developer" {
    name      = "quicksight-developer"
}

resource "aws_iam_group" "ryl-devops" {
    name      = "devops"
}
