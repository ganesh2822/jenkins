variable "vendor" {
    type = string
}
variable "environment" {
    type = string
}
variable "region" {
    type = string
    default = "us-east-1"
}
variable "access_key" {
    type = string
}
variable "sectet_key" {
    type = string
}

variable "cidr_blocks" {
    description = "EKS VPC CIDR BLOCK"
    type = list(object({
        cidr_block = string
    }))
}
