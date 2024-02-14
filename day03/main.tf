data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = "Day3" 
}
 provisioner "local-exec" {
  command = "echo 'EC2 Instance created with Terraform'"
}
# Define lifecycle management configurations
  lifecycle {
    create_before_destroy = true  # Create a new instance before destroying the old one
    ignore_changes        = [user_data]  # Ignore changes to the user_data attribute
  }
}
