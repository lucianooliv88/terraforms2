# terraforms2

Those Terraforms will deploy 2 EC2 instances from a specific AMI ID set as a string variable, VPC, AZs and Region also are set as variable which allows you run this code in any account, in any AWS region as well. All you need is a VPC and the subnets for each AZ, keypair and your local AWS profile configured from where you want to run this Terraform apply, ETC...

Examples:
eu-west-1 region and eu-west1-a and eu-west1-c for availability zones

Also, terraform state will be placed into the S3 bucket for SGs states.

Open SG to 0.0.0.0/0 allowing port for HTTP, HTTPS, SQL, and ssh... ingress and egress.

In summary, this terraform allows you to deploy 2 ec2 instances and 1 SG in any region and AZs in AWS. You can set the values as parameters for example in a Jenkins pipeline.

We can work with multiple providers as well where we can work with multi profiles which means AWS accounts.
Here I simulated eu-west-2 for dev and eu-west-1 for prod.

Thank you, Luciano.
