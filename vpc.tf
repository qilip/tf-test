data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_vpc" "test" {
  cidr_block = "172.10.0.0/20"
  tags = {
    Name = "tf-test"
  }
}

resource "aws_subnet" "test-a" {
  vpc_id            = aws_vpc.test.id
  cidr_block        = "172.10.0.0/24"
  availability_zone = data.aws_availability_zones.available.names[0]
}

resource "aws_subnet" "test-b" {
  vpc_id            = aws_vpc.test.id
  cidr_block        = "172.10.1.0/24"
  availability_zone = data.aws_availability_zones.available.names[1]
}

resource "aws_subnet" "test-c" {
  vpc_id            = aws_vpc.test.id
  cidr_block        = "172.10.2.0/24"
  availability_zone = data.aws_availability_zones.available.names[2]
}

resource "aws_subnet" "test-d" {
  vpc_id            = aws_vpc.test.id
  cidr_block        = "172.10.3.0/24"
  availability_zone = data.aws_availability_zones.available.names[3]
}
