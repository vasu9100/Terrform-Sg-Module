resource "aws_ssm_parameter" "mongo_id" {
    name = "/${var.app_name}/${var.enviornment}/mongo_id"
    type = "String"
    value = module.mongo_sg.sg_id #Module name+ output name
    
}

resource "aws_ssm_parameter" "catalogue_id" {
    name = "/${var.app_name}/${var.enviornment}/catalogue_id"
    type = "String"
    value = module.catalogue_sg.sg_id #Module name+ output name
    
}

resource "aws_ssm_parameter" "user_id" {
    name = "/${var.app_name}/${var.enviornment}/user_id"
    type = "String"
    value = module.user_sg.sg_id #Module name+ output name
    
}

resource "aws_ssm_parameter" "cart_id" {
    name = "/${var.app_name}/${var.enviornment}/cart_id"
    type = "String"
    value = module.cart_sg.sg_id #Module name+ output name
    
}

resource "aws_ssm_parameter" "redis_id" {
    name = "/${var.app_name}/${var.enviornment}/redis_id"
    type = "String"
    value = module.redis_sg.sg_id #Module name+ output name
    
}

resource "aws_ssm_parameter" "mysql_id" {
    name = "/${var.app_name}/${var.enviornment}/mysql_id"
    type = "String"
    value = module.mysql_sg.sg_id #Module name+ output name
    
}

resource "aws_ssm_parameter" "shipping_id" {
    name = "/${var.app_name}/${var.enviornment}/shipping_id"
    type = "String"
    value = module.shipping_sg.sg_id #Module name+ output name
    
}

resource "aws_ssm_parameter" "payment_id" {
    name = "/${var.app_name}/${var.enviornment}/payment_id"
    type = "String"
    value = module.payment_sg.sg_id #Module name+ output name
    
}

resource "aws_ssm_parameter" "rabbit_id" {
    name = "/${var.app_name}/${var.enviornment}/rabbit_id"
    type = "String"
    value = module.rabbit_sg.sg_id #Module name+ output name
    
}

resource "aws_ssm_parameter" "web_id" {
    name = "/${var.app_name}/${var.enviornment}/web_id"
    type = "String"
    value = module.web_sg.sg_id #Module name+ output name
    
}

resource "aws_ssm_parameter" "dispatch_id" {
    name = "/${var.app_name}/${var.enviornment}/dispatch_id"
    type = "String"
    value = module.dispatch_sg.sg_id #Module name+ output name
    
}

















