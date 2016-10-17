resource "aws_instance" "main" {
  ami                    = "${var.ami}"
  instance_type          = "${var.instance_type}"
  subnet_id              = "${aws_subnet.main.id}"
  vpc_security_group_ids = ["${aws_security_group.main.id}"]
  iam_instance_profile   = "${aws_iam_instance_profile.main.id}"
  key_name               = "${aws_key_pair.main.id}"

  tags {
    Name = "${var.name}"
  }
}
