resource "aws_instance" "local_var_bh" {

  ami                         = lookup(var.AMIS, var.AWS_REGION)
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.local_var_key.key_name
  subnet_id                   = module.local_var_vpc.public_subnets[0]
  associate_public_ip_address = true

  vpc_security_group_ids = [aws_security_group.local_var_sg.id]

  tags = {
    Name    = "BH"
    PROJECT = "RX"
  }

  provisioner "file" {
    source      = "script.sh"
    destination = "/tmp/script.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/script.sh",
      "sudo sed -i -e 's/\r$//' /tmp/script.sh",
      "sudo /tmp/script.sh",
      "mkdir test",
    ]
  }

  connection {
    user        = "ubuntu"
    type        = "ssh"
    private_key = file(var.PRIV_KEY_PATH)
    host        = self.public_ip
  }

}


output "public-ip" {
  value = aws_instance.local_var_bh.public_ip
}

output "private-ip" {
  value = aws_instance.local_var_bh.private_ip
}
