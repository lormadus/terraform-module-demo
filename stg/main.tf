provider "aws" {}
################################################

# VPC Module
module "vpc" {
    source                = "../modules/vpc"

    AWS_PUBLIC_KEY        = ""
    myip                  = "0.0.0.0/0"
    name                  = "myinfra"
    profile               = "stg" 
    all_cidr              = "0.0.0.0/0"
    avail_zones           = ["ap-northeast-2a", "ap-northeast-2c"]
    vpc_cidr              = "10.20.0.0/16"
    pub_sub_cidr          = ["10.20.10.0/24", "10.20.30.0/24"]
    pri_sub_cidr          = ["10.20.11.0/24", "10.20.31.0/24"]
}
