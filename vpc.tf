resource "aws_vpc" "default" {
	cidr_block = "${var.network}.0.0/16"
	enable_dns_hostnames = "true"
	tags {
		Name = "${var.org_name}-${var.aws_vpc_name}"
	}
}

output "aws_vpc_id" {
	value = "${aws_vpc.default.id}"
}