resource "aws_instance" "instance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_ssh_http.id]
  key_name               = var.key_name
  tags = {
    Name = "Apache web server for eDokumenty by SP"
  }
}
output "server-public-ip" {
  value = aws_instance.instance.public_ip
}