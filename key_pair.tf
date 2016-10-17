resource "aws_key_pair" "main" {
  key_name   = "${var.name}"
  public_key = "${file("${var.ssh_public_key_path}")}"
}
