#definition of Role

resource "aws_iam_role" "btc-prod-role" {
  name = "btc-prod-role"
  /* assume_role_policy = "${file("role_policy.json")}" */
  assume_role_policy = data.aws_iam_policy_document.Role-policy.json
 tags = {
    tag-key = "btc-prod-role"
  }
}

# Defnition of Policy
resource "aws_iam_policy" "btc-prod-policy" {
  name = var.policy_name
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {

        Action = ["sts:AssumeRole"]
        Effect   = "Allow"
        Resource = "${aws_iam_role.btc-prod-role.arn}"
      },
    ]
  })
    depends_on = [
    aws_iam_role.btc-prod-role
  ]
}

#definition of group
resource "aws_iam_group" "btc-prod-group" {
    name=var.groupname
    }

/* resource "aws_iam_group_policy" "btc-prod-policy" {
  name  = "btc-prod-policy"
  group = aws_iam_group.btc-prod-group.name
  depends_on = [
    aws_iam_role.btc-prod-role,
    aws_iam_group.btc-prod-group
  ]
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = ["sts:AssumeRole"]
        Effect   = "Allow"
        Resource = "${aws_iam_role.btc-prod-role.arn}"
      },
    ]
  })
} */

#Policy attached to group
resource "aws_iam_policy_attachment" "attachment" {
  name="attachment"
  policy_arn = aws_iam_policy.btc-prod-policy.arn
  groups = [ "${aws_iam_group.btc-prod-group.name}" ]
 }

#Definiton of user
resource "aws_iam_user" "btc-prod-user" {
  name=var.username
  tags = {
    tag-key = "btc-prod-user"
  }
}

# Assign users to group
resource "aws_iam_group_membership" "btc-prod-group-assignment" {
name="btc-prod-group-assignment"
  users = [aws_iam_user.btc-prod-user.name]
  group=aws_iam_group.btc-prod-group.name
}