This is terraform demo environment which is setup to create the following:
==========================================================================

1. A role, with no permissions, which can be assumed by users within the same account
2. A policy, allowing users / entities to assume the above role
3. A group, with the above policy attached
4. A user, belonging to the above group

Note: All entities have been named in a way btc-prod-role, btc-prod-policy, btc-prod-group, btc-prod-user
----------------------------------------------------------------------------------------------------------

In order to run test pleasev follow below:
=============================================
    1. Clone the repository on a system with valid terraform installation.
    2. Download aws-cli, setup your default profile with aws-configure.
    2. Navigate to the folder environment/demo and run folloiwng commands
    

            ~~
                a. terraform init
                b. terraform plan
                c. teraaform  apply
            ~~
You will get the outut some thing like below
-----------------------------------------------

            aws_iam_group  "Group btc-prod-group is created with ID btc-prod-group and ARN arn:aws:iam::YOUR_AWS_ACCOUNT_NUMBER:group/btc-prod-group"
            aws_iam_group_membership  "User btc-prod-user is added to group btc-prod-group"
            aws_iam_policy  "A policy with name btc-prod-policy ID btc-prod-policy and arn arn:aws:iam::YOUR_AWS_ACCOUNT_NUMBER:policy/btc-prod-policy have been created"
            aws_iam_policy_attachment  "Policy btc-prod-policy is attcahed to Group btc-prod-group "
            aws_iam_role  "Role btc-prod-role created with ID btc-prod-role And ARN arn:aws:iam::YOUR_AWS_ACCOUNT_NUMBER:role/btc-prod-role"
            aws_iam_user  "User btc-prod-user is created with id btc-prod-user and ARN arn:aws:iam::YOUR_AWS_ACCOUNT_NUMBER:user/btc-prod-user"
