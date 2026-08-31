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

variable "HRsName" {
 type = list(string)
 default = ["pushpa", "Lakhwa"]
}

variable "DevelopersName" {
 type = list(string)
 default = ["Sandeep", "Rajesh", "KishanSharma"]
}

variable "HR_Tags" {
    type = map(string)
    default = {
        Team = "HR"
    }
}

variable "Developers_Tags" {
    type = map(string)
    default = {
        Team = "Developer"
    }
}

variable "Servers" {
    type = map(object({
        instance_type = string
    }))
    default = {
        web = {
            instance_type = "t3.micro"
        }
        server = {
            instance_type = "t3.micro"
        }
    }
}

variable "ami" {
    type = string
    default = "ami-0ac7b260cf76d8865"
}