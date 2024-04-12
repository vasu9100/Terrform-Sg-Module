resource "aws_security_group" "roboshop_sg" {
  name        = local.sg-name
  description = var.sg_description
  vpc_id      = var.vpc_id

  tags =merge(var.common_tags,{
    Name = local.sg-name
    App = var.app_name
    Environment = var.enviornment
  })

  dynamic "ingress" {
    for_each = var.ingress_rules
    content {
      description = ingress.value.description
      from_port = ingress.value.from_port
      to_port = ingress.value.to_port
      cidr_blocks = ingress.value.cidr_blocks
      protocol = ingress.value.protocol

    }
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

}

