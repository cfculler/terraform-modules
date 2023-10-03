module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.5.0"

  count = 1
  name  = "my-ec2-cluster-${count.index}"

  ami                    = "ami-0f8e81a3da6e2510a"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-8507a5f8"]
  subnet_id              = "subnet-8e073cd5"

  tags = {
    Terraform   = "true"
    Environment = "sandbox"
  }
}
