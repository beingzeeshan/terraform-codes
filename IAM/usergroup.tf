# ========== Creating IAM User Group ==========

resource "aws_iam_group" "newgroup" {
  count = length(var.group)
  name  = element(var.group, count.index)
}

