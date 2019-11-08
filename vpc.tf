resource "aws_vpc" "test" {
  cidr_block = "172.10.0.0/20"
  tags = {
    Name = "test"
  }
}

resource "aws_subnet" "test-a" {
  vpc_id = aws_vpc.test.id
  cidr_block = "172.10.0.0/24"
  availability_zone = "ap-northeast-2a"
}

resource "aws_subnet" "test-b" {
  vpc_id = aws_vpc.test.id
  cidr_block = "172.10.1.0/24"
  availability_zone = "ap-northeast-2b"
}

resource "aws_subnet" "test-c" {
  vpc_id = aws_vpc.test.id
  cidr_block = "172.10.2.0/24"
  availability_zone = "ap-northeast-2c"
}
