# Create AWS ec2 instance
resource "aws_instance" "TestInstance" {
  ami           = data.aws_ami.dev_ami.id
  key_name = var.key_name
  instance_type = var.instance_type
  security_groups= [var.security_group]
  tags= {
    Name = var.tag_name
  }
}
