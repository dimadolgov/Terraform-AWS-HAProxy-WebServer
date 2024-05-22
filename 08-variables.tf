############ vpc + subnets ############
variable "region" {
  type    = string
  default = "il-central-1"
}
variable "vpc_cidr_block" {
  type    = string
  default = "20.20.0.0/16"
}
variable "subnet_cidr_public" {
  type    = string
  default = "20.20.200.0/24"
}

############ security groups ############
variable "ingress_cidr_blocks" {
  type        = list(any)
  default     = ["0.0.0.0/0"]
  description = "ingress_cidr_blocks"
}
variable "ingres_ports" {
  type    = list(any)
  default = ["80", "22"]
}
variable "egress_ports" {
  type    = list(any)
  default = ["0.0.0.0/0"]
}

############ ec2 instances ############
variable "instance_type" {
  type    = string
  default = "t3.nano"
}
variable "ami" {
  type    = string
  default = "ami-0f57fcd358b56d855"
}
variable "ec2_count" {
  type    = string
  default = "6"
}
