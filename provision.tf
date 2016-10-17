resource "null_resource" "provision" {
  connection {
    host        = "${aws_instance.main.public_ip}"
    private_key = "${file("${var.ssh_private_key_path}")}"
    user        = "${var.user}"
  }

  provisioner "file" {
    source      = "${path.module}/bootstrap.sh"
    destination = "/var/tmp/bootstrap.sh"
  }

  provisioner "remote-exec" {
    inline = "sudo bash /var/tmp/bootstrap.sh"
  }

  triggers {
    instance_id = "${aws_instance.main.id}"
    script_hash = "${sha256(file("${path.module}/bootstrap.sh"))}"
  }
}
