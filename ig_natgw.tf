# CREATE IG 

resource "aws_internet_gateway" "gw" {
  vpc_id = data.aws_vpc.existing_vpc.id
  tags = {
    Name = "${lower(var.vendor)}-${lower(var.environment)}-ig"
  }
}

