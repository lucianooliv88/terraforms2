pipeline{
    parameters {
        string(name: 'AMI_ID', defaultValue: 'Grab the AMI ID from Image Factory', description: 'AMI ID',)
        string(name: 'VPC_ID', defaultValue: 'Grab the VPC ID from AWS Account workplace', description: 'VPC ID',)
        string(name: 'AZA_NAME', defaultValue: 'eu-west-2a?', description: 'Availability Zone A',)
        string(name: 'AZC_NAME', defaultValue: 'eu-west-2c?', description: 'Availability Zone C',)
        string(name: 'AWS_REGION', defaultValue: 'eu-west-2?', description: 'AWS REGION',)
    }
    agent any
    tools {
        terraform 'Terraform'
    }
    stages{
        stage('Git Checkout'){
            steps{
                git branch: 'main', url: 'https://github.com/lucianooliv88/terraforms2'
            }
        }
        stage('Terraform Init'){
            steps{
                sh 'terraform init'
                echo "AMI ID is ${params.AMI_ID}"
                echo "VPC ID is ${params.VPC_ID}"
                echo "Availability Zone A at Region ${params.AWS_REGION} is ${params.AZA_NAME}"
                echo "Availability Zone C at Region ${params.AWS_REGION} is ${params.AZC_NAME}"
                echo "The Region is ${params.AWS_REGION}"
            }
        }
        stage('Terraform Apply'){
            steps{
                sh "terraform destroy -auto-approve -var image_id=${params.AMI_ID} -var vpc_id=${params.VPC_ID} -var aza_name=${params.AZA_NAME} -var azc_name=${params.AZC_NAME}"
        }
    }
}
}
