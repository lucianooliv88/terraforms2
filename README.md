# terraforms2

Those Terraforms will deploy 2 EC2 instances from a specific AMI ID as a string and it will be added into Open SG to 0.0.0.0/0 allowing port for HTTP, HTTPS, SQL, and ssh...

This is considering we have a VPC in place also you can select which region to apply following the workplace configuration.
Examples:
eu-west-1 region and eu-west1-a and eu-west1-c for availability zones

Also, terraform state will be placed into the S3 bucket for SGs states

In summary, this terraform allows you to deploy 2 ec2 instances and 1 SG in any region and AZs in AWS. You can set the values as parameters for example in a Jenkins pipeline.

We can work with multiple providers as well where we can work with multi profiles which means AWS accounts.

