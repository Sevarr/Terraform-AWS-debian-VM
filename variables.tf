# ssh key file .pem
variable "ssh_key_file" {
  default = "~/.ssh/terraform-key.pem"
}

# ssh key name
variable "key_name" {
  default = "terraform-key"
}

# instance type
variable "instance_type" {
  default = "t2.micro"
}

# OS ami
variable "ami" {
  default = "ami-0245697ee3e07e755"
}

# region
variable "region" {
  default = "eu-central-1"
}
