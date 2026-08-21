variable "region" {
    default = "ap-south-1"
    type = string
}

variable "env" {
    default = "Development"
    type = string
}

variable "bucket" {
    default = "remote-backend-storage-bucket"
    type =  string
}

variable "team" {
    default = "DevOps"
    type = string
}

variable "config_version" {
    default = "v2"
    type = string
}

variable "profile" {
    default = "terraform"
    type = string
}