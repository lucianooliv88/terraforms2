# Terraforms2 my playground

Those Terraforms will deploy 2 EC2 instances from a specific AMI ID set as a string variable, VPC, AZs and Region also are set as variable which allows run this code in any account, in any AWS region as well. Is necessary a VPC and the subnets for each AZ, keypair and a local AWS profile or (role) configured from where it will run this Terraform, init, plan, apply, ETC...

Examples:
eu-west-1 as Region and eu-west1-a and eu-west1-c for Availability zones.

Also, terraform state will be placed into the S3 bucket for SGs states.

Open SG to 0.0.0.0/0 allowing port for HTTP, HTTPS, SQL, and SSH... such as ingress and egress.

In summary, this terraform allows to deploy 2 EC2 instances and 1 SG in any region and AZs in AWS.

It can work with multiple providers as well, where it can work with multi profiles which means multi AWS accounts.
Here I simulated eu-west-2 for dev and eu-west-1 for prod using workspace.

Finally, I also added a JenkinsFile where I created a pipeline to auto approve deploy it using the variables as parameters.
After, we can replace apply to destroy. There is much to create over here, but that is all I want to share for a while...

Thanks, bye-bye now.

by Luciano
