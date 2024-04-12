data "aws_ssm_parameter" "vpc_id" {
  name = "/Roboshop/dev/vpc_id"  # This should be the path where your VPC ID parameter is stored in Parameter Store
}

data "aws_vpc" "default" {
  default = true
}

# data "aws_ssm_parameter" "mongo_sg_id" {
#   name = "/Roboshop/dev/mongo_id"  # This should be the path where your VPC ID parameter is stored in Parameter Store
# }

# data "aws_ssm_parameter" "catalogue_sg_id" {
#   name = "/Roboshop/dev/catalogue_id"  # This should be the path where your VPC ID parameter is stored in Parameter Store
# }

# data "aws_ssm_parameter" "user_sg_id" {
#   name = "/Roboshop/dev/user_id"  # This should be the path where your VPC ID parameter is stored in Parameter Store
# }

# data "aws_ssm_parameter" "redis_sg_id" {
#   name = "/Roboshop/dev/redis_id"  # This should be the path where your VPC ID parameter is stored in Parameter Store
# }

# data "aws_ssm_parameter" "cart_sg_id" {
#   name = "/Roboshop/dev/cart_id"  # This should be the path where your VPC ID parameter is stored in Parameter Store
# }

# data "aws_ssm_parameter" "mysql_sg_id" {
#   name = "/Roboshop/dev/mysql_id"  # This should be the path where your VPC ID parameter is stored in Parameter Store
# }

# data "aws_ssm_parameter" "shipping_sg_id" {
#   name = "/Roboshop/dev/shipping_id"  # This should be the path where your VPC ID parameter is stored in Parameter Store
# }



