variable "aws_region" {
  description = "Región de AWS para el despliegue"
  default     = "us-east-2"
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  default     = "t2.micro"
}

variable "key_name" {
  description = "Nombre de la clave SSH en AWS"
  default     = "Electiva3_Keys_aws" 
}

variable "ami_id" {
  description = "ID de la AMI de Ubuntu para EC2"
  default     = "ami-032416010890fb636" 
}