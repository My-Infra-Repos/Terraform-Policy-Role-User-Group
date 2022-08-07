data "aws_caller_identity" "current" {}

data "aws_iam_policy_document" "Role-policy" {
  statement {
    sid="user"
    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"]
      /* /${aws_iam_user.btc-prod-user.name} */
    }
 condition {
      test     = "ArnLike"
      /* variable = "arn:prefix" */
      variable = "aws:SourceArn"
      values = [
     "arn:aws:iam::${data.aws_caller_identity.current.account_id}:user/*"
     /* ${aws_iam_user.btc-prod-user.name} */
      ]
    }
  }
}

