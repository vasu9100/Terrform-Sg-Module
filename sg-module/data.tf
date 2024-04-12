data "aws_ssm_parameter" "vpc_id" {
  name = "/Roboshop/dev/vpc_id"  # This should be the path where your VPC ID parameter is stored in Parameter Store
}

data "aws_vpc" "default" {
  default = true
}
