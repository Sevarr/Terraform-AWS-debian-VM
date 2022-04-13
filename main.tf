resource "null_resource" "main" {
  connection {
    type        = "ssh"
    user        = aws_iam_user.user_one.name
    private_key = file(var.ssh_key_file)
    host        = aws_instance.instance.public_ip
  }
  provisioner "remote-exec" {
    inline = [
      "sudo apt update -y",
      "sudo apt upgrade -y",
      "sudo apt install software-properties-common apt-transport-https curl -y",
      "sudo curl -sSL https://packages.sury.org/php/README.txt | sudo bash -x",
      "sudo apt update -y && apt upgrade -y",
      "sudo apt install php7.4 libapache2-mod-php7.4 php7.4-cli -y",
      "sudo apt install apache2",
      "sudo systemctl enable apache2",
      "sudo chmod -R 777 /var/www/html/"
    ]
  }

  provisioner "file" {
    source      = "${path.module}/files/index.php"
    destination = "/var/www/html/index.php"
  }

  provisioner "remote-exec" {
    inline = [
        "sudo rm /var/www/html/index.html",
        "sudo systemctl start apache2",
        "sudo chmod -R 777 /var/www/html/"
    ]
  }
}