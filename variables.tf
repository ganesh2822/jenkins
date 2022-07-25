variable "vendor" {
    type = string
}
variable "environment" {
    type = string
}
variable "region" {
    type = string
    default = "us-west-2"
}
variable "AKIARO42PKYVLQGWSCET" {
    type = string
}
variable "cxQmY6aas05QeRkxhAtuVCzrcztmZJxh9ltSQrPq" {
    type = string
}

variable "cidr_blocks" {
    description = "EKS VPC CIDR BLOCK"
    type = list(object({
        cidr_block = string
    }))
}
