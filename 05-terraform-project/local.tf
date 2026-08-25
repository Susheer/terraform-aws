locals {
    env =  "${var.env}=='PROD'?'Production':'Development'"
    user_path =  ""${var.env}=='PROD'?'/Production/useres/':'Development/useres/'""
}