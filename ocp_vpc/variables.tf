variable "ocp_subnets" {
  default = 4
}

variable "ocp_cidr" {
  default = "10.0.0.0/16"
}

variable "aws_amis" {
  default = {
    "eu-west-1" = "ami-"
  }
}
