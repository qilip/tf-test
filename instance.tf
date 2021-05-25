resource "aws_instance" "test_server" {
  ami               = "	ami-0be9734c9e68b99f4" # ubuntu 20.04 LTS Focal
  instance_type     = "t2.micro"
  availability_zone = aws_subnet.test-a.availability_zone
  vpc_security_group_ids = [
    aws_security_group.test-allow-all.id
  ]
  subnet_id = aws_subnet.test-a.id

  tags = {
    Name = "TerraformTestInstance"
  }
}

resource "aws_eip" "test_server" {
  vpc      = true
  instance = aws_instance.test_server.id
}
