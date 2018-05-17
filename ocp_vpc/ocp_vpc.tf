resource "aws_vpc" "ocp_vpc" {
  cidr_block = "${var.ocp_cidr}"
}

resource "aws_subnet" "ocp_subnets" {
  count             = "${length(data.aws_availability_zones.all.names)}"
  vpc_id            = "${aws_vpc.ocp_vpc.id}"
  availability_zone = "${element(data.aws_availability_zones.all.names, count.index)}"
  cidr_block        = "${cidrsubnet(aws_vpc.ocp_vpc.cidr_block,8,count.index + 1)}"

  tags {
    Name = "ocp-subnet-${count.index}"
  }
}
