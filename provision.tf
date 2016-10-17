resource "null_resource" "provision" {
  connection {
    host        = "${aws_instance.main.public_ip}"
    private_key = "${file("${var.ssh_private_key_path}")}"
    user        = "${var.user}"
  }

  provisioner "remote-exec" {
    inline = "echo OK"
  }

  triggers {
    instance_id = "${aws_instance.main.id}"
  }
}
