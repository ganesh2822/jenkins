data "aws_ami" "linux" {
  most_recent  = true
  
   filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  
  owners = ["amazon"]
}

resource "aws_network_interface" "private_network_interface" {
  subnet_id          = aws_subnet.public-subnet-1.id
  security_groups    = [aws_security_group.app-sg-grp.id]
  private_ips        = ["10.0.10.10"]
}

resource "aws_instance" "app" {
    ami                       = "ami-0cff7528ff583bf9a"
    instance_type             = "t2.micro"
    root_block_device {
        volume_type         = "gp2"
        volume_size         = 10
    }
    key_name = "jenkins"
    tags = {
        Name = "${var.vendor}-${var.environment}-app"
    }
        
}

