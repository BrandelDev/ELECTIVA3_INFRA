output "instance_id" {
  description = "ID de la instancia EC2"
  value       = aws_instance.CLONX_INSTANCE.id
}

output "public_ip" {
  description = "Dirección IP pública de la instancia EC2"
  value       = aws_instance.CLONX_INSTANCE.public_ip
}

output "private_ip" {
  description = "Dirección IP privada de la instancia EC2"
  value       = aws_instance.CLONX_INSTANCE.private_ip
}

output "key_name" {
  description = "Nombre de la clave SSH utilizada"
  value       = var.key_name
}

output "ami_id" {
  description = "ID de la AMI utilizada para la instancia"
  value       = var.ami_id
}