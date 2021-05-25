resource "aws_security_group" "test-allow-all" {
  name = "test-allow-all"
  description = "Allow all inbound/outbound traffic"
  vpc_id = aws_vpc.test.id
  
  ingress {
<<<<<<< Updated upstream
    from_port = 0
    to_port = 0
    protocol = "-1"
=======
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
>>>>>>> Stashed changes
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  egress {
<<<<<<< Updated upstream
    from_port = 0
    to_port = 0
    protocol = "-1"
=======
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
>>>>>>> Stashed changes
    cidr_blocks = ["0.0.0.0/0"]
  }
}
