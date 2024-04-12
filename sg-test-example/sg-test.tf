module "mongo_sg" {
    source = "github.com/vasu9100/Terrform-Sg-Module.git?ref=main" # Adjust the relative path as needed
    sg_name = "mongo" # Enclosed in double quotes to represent it as a string
    vpc_id  = data.aws_ssm_parameter.vpc_id.value
    app_name = var.app_name
    sg_description = "This Sg For MongoDb"
}

module "catalogue_sg" {
    source = "github.com/vasu9100/Terrform-Sg-Module/sg-module.git?ref=main" # Adjust the relative path as needed
    sg_name = "catalogue" # Enclosed in double quotes to represent it as a string
    vpc_id  = data.aws_ssm_parameter.vpc_id.value
    app_name = var.app_name
    sg_description = "This Sg For catalogue"
}

module "user_sg" {
    source = "github.com/vasu9100/Terrform-Sg-Module/sg-module.git?ref=main" # Adjust the relative path as needed
    sg_name = "user" # Enclosed in double quotes to represent it as a string
    vpc_id  = data.aws_ssm_parameter.vpc_id.value
    app_name = var.app_name
    sg_description = "This Sg For user"
}

module "redis_sg" {
    source = "github.com/vasu9100/Terrform-Sg-Module/sg-module.git?ref=main" # Adjust the relative path as needed
    sg_name = "redis" # Enclosed in double quotes to represent it as a string
    vpc_id  = data.aws_ssm_parameter.vpc_id.value
    app_name = var.app_name
    sg_description = "This Sg For redis"
}

module "cart_sg" {
    source = "github.com/vasu9100/Terrform-Sg-Module/sg-module.git?ref=main" # Adjust the relative path as needed
    sg_name = "cart" # Enclosed in double quotes to represent it as a string
    vpc_id  = data.aws_ssm_parameter.vpc_id.value
    app_name = var.app_name
    sg_description = "This Sg For cart"
}

module "mysql_sg" {
    source = "github.com/vasu9100/Terrform-Sg-Module/sg-module.git?ref=main" # Adjust the relative path as needed
    sg_name = "mysql" # Enclosed in double quotes to represent it as a string
    vpc_id  = data.aws_ssm_parameter.vpc_id.value
    app_name = var.app_name
    sg_description = "This Sg For mysql"
}

module "shipping_sg" {
    source = "github.com/vasu9100/Terrform-Sg-Module/sg-module.git?ref=main" # Adjust the relative path as needed
    sg_name = "shipping" # Enclosed in double quotes to represent it as a string
    vpc_id  = data.aws_ssm_parameter.vpc_id.value
    app_name = var.app_name
    sg_description = "This Sg For shipping"
}

module "rabbit_sg" {
    source = "github.com/vasu9100/Terrform-Sg-Module/sg-module.git?ref=main" # Adjust the relative path as needed
    sg_name = "rabbit" # Enclosed in double quotes to represent it as a string
    vpc_id  = data.aws_ssm_parameter.vpc_id.value
    app_name = var.app_name
    sg_description = "This Sg For rabbit"
}

module "payment_sg" {
    source = "github.com/vasu9100/Terrform-Sg-Module/sg-module.git?ref=main" # Adjust the relative path as needed
    sg_name = "payment" # Enclosed in double quotes to represent it as a string
    vpc_id  = data.aws_ssm_parameter.vpc_id.value
    app_name = var.app_name
    sg_description = "This Sg For payment"
}

module "dispatch_sg" {
    source = "github.com/vasu9100/Terrform-Sg-Module/sg-module.git?ref=main" # Adjust the relative path as needed
    sg_name = "dispatch" # Enclosed in double quotes to represent it as a string
    vpc_id  = data.aws_ssm_parameter.vpc_id.value
    app_name = var.app_name
    sg_description = "This Sg For dispatch"
}

module "web_sg" {
    source = "github.com/vasu9100/Terrform-Sg-Module/sg-module.git?ref=main" # Adjust the relative path as needed
    sg_name = "web" # Enclosed in double quotes to represent it as a string
    vpc_id  = data.aws_ssm_parameter.vpc_id.value
    app_name = var.app_name
    sg_description = "This Sg For web"
}












