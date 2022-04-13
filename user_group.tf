resource "aws_iam_group_membership" "team" {
  name = "tf-web_page-group-membership"

  users = [
    aws_iam_user.user_one.name,
  ]

  group = aws_iam_group.group.name
}

resource "aws_iam_group" "group" {
  name = "admin-group"
}

resource "aws_iam_user" "user_one" {
  name = "admin"
}
