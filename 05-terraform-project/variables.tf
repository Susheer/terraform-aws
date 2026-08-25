variable "region" {
    default =  "ap-south-1"
    type = string
}

variable "env" {
    default = "dev"
    type = string
}

variable "aws-profile" {
    default = "terraform"
    type = string
}