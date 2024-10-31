provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "CLONX_INSTANCE" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  user_data = <<-EOF
    #!/bin/bash
  
    sudo yum update -y
    sudo amazon-linux-extras install docker -y
    sudo service docker start
    sudo usermod -a -G docker ec2-user

    # Descargar una imagen de Docker (por ejemplo, la imagen de Nginx)
    sudo docker pull danieldev128/my-jenkis-repo:latest

    docker run -d -p 8080:8080 -p 50000:50000 --name jenkins_container danieldev128/my-jenkis-repo:latest

  EOF

  tags = {
    Name = "Electiva3_ec2"
  }
}
