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

variable "Users" {
 type = map(object({
    Department = string
 }))
 default = {
    Sandeep = {
        Department = "Developers"
    }

    Rajesh = {
        Department = "Developers"
    }

    KishanSharma = {
        Department = "Developers"
    }

    pushpa = {
        Department = "Human Resource"
    }

    Lakhwa = {
        Department = "Human Resource"
    }
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