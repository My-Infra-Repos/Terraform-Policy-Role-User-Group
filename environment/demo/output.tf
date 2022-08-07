output "aws_iam_role"{
    
    value= module.iam.aws_iam_role
    description = "IAM Role created"
   
}


output "aws_iam_policy" {
    value=module.iam.aws_iam_policy
    description = "IAM Policy created"
}

output "aws_iam_group" {
  value = module.iam.aws_iam_group
  description = "IAM Group created"
   
}

output "aws_iam_policy_attachment" {
  value = module.iam.aws_iam_policy_attachment
  description = "IAM Policy attached to group"
   
}


output "aws_iam_user" {
 value = module.iam.aws_iam_user
 description = "IAM User created"
  
}

output "aws_iam_group_membership"{
value = module.iam.aws_iam_group_membership
description = "IAM User added to group"
}