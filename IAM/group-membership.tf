resource "aws_iam_user_group_membership" "Group_Membership" {
 user = aws_iam_user.newusers.name

 groups = [
   aws_iam_group.newgroup.name
 ]
}