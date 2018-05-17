provider "aws" {
  region = "${var.ocp_region}"
}

module "ocp_vpc" {
  source = "./ocp_vpc"
}

module "bastion" {
  source = "./bastion"
}
