variable "ami-value" {
    description = "value for the ami"
}

variable "instance_type_value" {
    description = "value for instance_type"
}

variable "subnet_id_value" {
    description = "value for the subnet_id"
}

provider "aws" {
     region = "us-west-1"
}
resource "aws_instance" "example" {
     ami = var.ami
     instance_type = var.instance_type_value
     subnet_id = var.subnet_id_value
}

            