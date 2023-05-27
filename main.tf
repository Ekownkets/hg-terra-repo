resource "aws_key_pair" "deployer" {
  key_name   = "$(var.name)-key"
  public_key = var.pub_key
}

data "aws_vpc" "default" {
    default = true
  
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic from these ports"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
 ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
 } 

 ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      =["0.0.0.0/0"]
 } 
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
 
  }

 }

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance-type 
  key_name = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [ aws_security_group.allow_tls.id ]

  tags = {
    Name = "deployer-key"
  }
}


