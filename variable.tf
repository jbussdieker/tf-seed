variable "name" {
  default = "seed"
}

variable "ami" {
  # Ubuntu 14.04 Trusty Instance Store HVM
  default = "ami-ecf4bcfb"
}

variable "user" {
  default = "ubuntu"
}

variable "instance_type" {
  default = "m3.medium"
}

variable "ssh_private_key_path" {
  default = "~/.ssh/id_rsa"
}

variable "ssh_public_key_path" {
  default = "~/.ssh/id_rsa.pub"
}
