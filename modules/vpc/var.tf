variable "AWS_PUBLIC_KEY" {
    description = "Set Environment Variable"
}
variable "myip" {
    description = "My IP Address"
    type        = string
}
variable "name" {
    description = "This is Prefix Name"
    type        = string
}
variable "profile" {
    description = "Seperate DEV, STG, PRD"
    type        = string
}
variable "avail_zones" {
    description = "Seoul Region"
    type        = list    
}
variable "all_cidr" {
    description = "Allow all"
    type        = string
}
variable "vpc_cidr" {
    description = "Set VPC CIDR "
    type        = string
}
variable "pub_sub_cidr" {
    description = "Set Public Subnet CIDR"
    type        = list
}
variable "pri_sub_cidr" {
    description = "Set Private Subnet CIDR"
    type        = list
}
