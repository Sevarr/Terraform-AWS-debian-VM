variable "ssh_key_file" {
  default = "~/.ssh/terraform-key.pem"
  # default = "%HOMEPATH%/.ssh/terraform-key.pem"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  default = "ami-0245697ee3e07e755"
}

variable "key_name" {
  default = "terraform-key"
}

variable "region" {
  default = "eu-central-1"
}
