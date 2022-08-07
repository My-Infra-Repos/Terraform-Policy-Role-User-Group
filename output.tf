
output "aws_iam_role"{
value = "Role ${aws_iam_role.btc-prod-role.name} created with ID ${aws_iam_role.btc-prod-role.id} And ARN ${aws_iam_role.btc-prod-role.arn}"
}


output "aws_iam_policy" {
    value="A policy with name ${aws_iam_policy.btc-prod-policy.name} ID ${aws_iam_policy.btc-prod-policy.name} and arn ${aws_iam_policy.btc-prod-policy.arn} have been created"
}

output "aws_iam_group" {
  value = "Group ${aws_iam_group.btc-prod-group.name} is created with ID ${aws_iam_group.btc-prod-group.id} and ARN ${aws_iam_group.btc-prod-group.arn}"
   
}

output "aws_iam_policy_attachment" {
  value = "Policy ${aws_iam_policy.btc-prod-policy.name} is attcahed to Group ${aws_iam_group.btc-prod-group.name} "
   
}


output "aws_iam_user" {
  value = "User ${aws_iam_user.btc-prod-user.name} is created with id ${aws_iam_user.btc-prod-user.id} and ARN ${aws_iam_user.btc-prod-user.arn}"
  
}

output "aws_iam_group_membership"{
value = "User ${aws_iam_user.btc-prod-user.name} is added to group ${aws_iam_group.btc-prod-group.name}"
}

