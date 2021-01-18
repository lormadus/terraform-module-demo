resource "aws_vpc" "myvpc" {
    cidr_block = var.vpc_cidr
    tags = {
        Name = "${var.name}-${var.profile}-vpc"
    }
}
# Ap-northeast-2a --> 10
# Ap-northeast-2b --> 20
# Ap-northeast-2c --> 30

# Ap-northeast-2a  Public Subnet #1
resource "aws_subnet" "public" {
    count             = length(var.pub_sub_cidr)
    vpc_id            = aws_vpc.myvpc.id
    cidr_block        = var.pub_sub_cidr[count.index]
    availability_zone = var.avail_zones[count.index]

    tags = {
        Name = "${var.name}-${var.profile}-public-${substr("${var.avail_zones[count.index]}", -1, 1)}-${count.index}"
    }
}

# Ap-northeast-2a  Private Subnet #1
resource "aws_subnet" "private" {
    count             = length(var.pri_sub_cidr)
    vpc_id            = aws_vpc.myvpc.id
    cidr_block        = var.pri_sub_cidr[count.index]
    availability_zone = var.avail_zones[count.index]

    tags = {
        Name = "${var.name}-${var.profile}-private-${substr("${var.avail_zones[count.index]}", -1, 1)}-${count.index}"
    }
}
