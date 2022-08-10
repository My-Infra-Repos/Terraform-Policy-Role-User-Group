This is terraform demo environment which is setup to create the following:
==========================================================================

1. A role, with no permissions, which can be assumed by users within the same account
2. A policy, allowing users / entities to assume the above role
3. A group, with the above policy attached
4. A user, belonging to the above group

Note: All entities have been named in a way btc-prod-role, btc-prod-policy, btc-prod-group, btc-prod-user
----------------------------------------------------------------------------------------------------------

In order to run test pleasev follow below:
1. Clone the repository on a system with valid terraform installation.
2. Navigate to the folder environment/demo and run folloiwng commands

~~sh
a. terraform init
b. terraform plan
c. teraaform  apply
~~sh
