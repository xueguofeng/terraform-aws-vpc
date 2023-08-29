
resource "aws_security_group" "local_var_sg" {

  name        = "RX-VPC-Bastion-Host"
  description = "Security group for the Bastion Host"

  vpc_id = module.local_var_vpc.vpc_id # refer to the module

  egress {
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
    cidr_blocks = [var.MYIP]
  }
  
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.MYIP]
  }
  
}
