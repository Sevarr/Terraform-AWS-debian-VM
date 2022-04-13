# Create a Web Server an Amazon EC2 via Terraform

Simple script to create VM with Linux Debian on EC2 AWS cloud running PHP 7.4 and apache2 with simpe web page

# This solution was tested on Windows 10 and Linux Debian
with installed Terraform CLI and AWS CLI

# Assumption
Installed Terraform version which is >= 1.1.8
.PEM key should be provided under: ~/.ssh/terraform-key.pem"
AWS credentials should be provided at: ~/.aws/credentials"

# Default settings 
# Can be channge in variables.tf 
Using Debian AWS ami: ami-0245697ee3e07e755
Default instance type: t2.micro
Default region: eu-central-1
Default ssh key file name: terraform-key.pem
Default ssh key name terraform-key

# Instructions
Please follow the instructions below to create and run Debian VM in AWS EC2 using Terraform:
git clone https://github.com/Sevarr/debianVM_on_AWS_via_Terraform
terraform init
terraform plan
terraform apply -auto-approve

# Test
In web browser, navigate to ip address returned by terraform script

# Clean up
terraform show
terraform destroy

# Author
script created by Sebastian Przeliorz