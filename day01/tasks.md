# TerraWeek Day 1

## Day 1: Introduction to Terraform and Terraform Basics

- What is Terraform and how can it help you manage infrastructure as code?
It is an open source tool that is used to provision infrastrucure using a high level configuration language or HCL (HashiCorp). 

It can provison infra in multi-cloud environment, produces a tf state that helps in keeping track, reduces human error which can be done through CLI, handles dependency between resources on its own. 

- Why do we need Terraform and how does it simplify infrastructure provisioning?
The need for scaling the infra can easily be done through this rather than going to the console every single time. 

- How can you install Terraform and set up the environment for AWS, Azure, or GCP?
To install Terraform we can refer to commands given in the official terraform website.
It has steps like installing the terraform binary. Unzipping the downloaded file, moving it to a directory as desired and then checking the version

- Explain the important terminologies of Terraform with the example at least (5 crucial terminologies).
Provider: plugins that Tf uses to manage resources on specific infra platforms.
provider "aws" {
    region = "us-east-1"
}

Resource: are infra components that you want to manage.
resource "aws_instance" "ec2" {
    ami = "ami-id"
    instance_type = "t2.micro"
} 

Module: are usable components that have one or more resources.
module  "s3_bucket" {
    source = "terraform-aws-modules/s3-bucket/aws"
    version = "2.0.0"

    bucket_name = "example-bucket"
    acl = "private"    
}

Variable: it allows parameterization of configurations

variable "instance_type" {
    description = "The type of instance to create"
    default = "t2.medium"
}

Output: values returned by a terraform configuration, can be used to display information.
output "instance_public_ip" {
    value = aws_instance.example.public_ip
}

Attach code snippets and steps wherever necessary and post your learnings on LinkedIn

Feel Free to reach out to any of the TWS Community Builders / Leaders

Watch this [Reference Video](https://www.youtube.com/live/965CaSveIEI?feature=share)

Happy Learning 
