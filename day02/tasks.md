# TerraWeek Day 2

## Task 1: Familiarize yourself with HCL syntax used in Terraform
- Learn about HCL blocks, parameters, and arguments
HCL utilizes blocks to define different components of the configuration.
Example: resources, variables and outputs

Parameters: are defined by block type and are present before the curly brackets.
Arguments: key-value pairs specifying setting for the block. 


- Explore the different types of resources and data sources available in Terraform
R: compute instances, s3 buckets, databases, networking resources.
D: allows Tf to fetch info from external sources such as cloud providers, API's.

## Task 2: Understand variables, data types, and expressions in HCL
- Create a variables.tf file and define a variable
Help in flexibility and reusability

```hcl
variable "instance_type" {
    type = string
    default = "t2.micro"
}
```

Now to use it in a file:

```hcl
resource "aws_instance" "demo" {
    ami = "<ami_id>"
    instance_type = var.instance_type
}
```

Here I haven't hardcoded what instance type do I want, this config file will directly take it from variable.tf.



- Use the variable in a main.tf file to create a "local_file" resource

## Task 3: Practice writing Terraform configurations using HCL syntax
- Add required_providers to your configuration, such as Docker or AWS
# providers.tf

```hcl
provider "docker" {
    host = "<url>"
    cert_path = "/home/pmgoriya/.docker/certs"
}

provider "aws"{
    region = "us-east-1"    
}
```
- Test your configuration using the Terraform CLI and make any necessary adjustments
#screenshots attached


Attach code snippets and steps wherever necessary and post your learnings on LinkedIn
Feel Free to reach out to any of the TWS Community Builders / Leaders
Watch this 👉 https://youtu.be/kqJIKjkJ1Lo

# Happy Learning🎉🚀
