resource "aws_security_group" "main" {
  vpc_id      = "${aws_vpc.main.id}"
  name        = "${var.name}"
  description = "${var.name}"

  ingress {
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    to_port     = "22"
  }

  tags {
    Name = "${var.name}"
  }
}
