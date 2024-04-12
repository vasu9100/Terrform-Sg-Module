// Allow incoming traffic from catalogue servers to MongoDB on port 27017
resource "aws_security_group_rule" "mongo_ingress_catalogue" {
  type              = "ingress"
  to_port           = 27017
  protocol          = "tcp"
  from_port         = 27017
  security_group_id = module.mongo_sg.sg_id
  source_security_group_id = module.catalogue_sg.sg_id
  description       = "Allowing Incoming Traffic from catalogue Servers through Port 27017"
}

// Allow incoming traffic from user servers to MongoDB on port 27017
resource "aws_security_group_rule" "mongo_ingress_user" {
  type              = "ingress"
  to_port           = 27017
  protocol          = "tcp"
  from_port         = 27017
  security_group_id = module.mongo_sg.sg_id
  source_security_group_id = module.user_sg.sg_id
  description       = "Allowing Incoming Traffic from user Servers through Port 27017"
}

// Allow incoming traffic from user servers to Redis on port 6379
resource "aws_security_group_rule" "redis_ingress_user" {
  type              = "ingress"
  to_port           = 6379
  protocol          = "tcp"
  from_port         = 6379
  security_group_id = module.redis_sg.sg_id
  source_security_group_id = module.user_sg.sg_id
  description       = "Allowing Incoming Traffic from user Servers through Port 6379"
}

// Allow incoming traffic from cart servers to Redis on port 6379
resource "aws_security_group_rule" "redis_ingress_cart" {
  type              = "ingress"
  to_port           = 6379
  protocol          = "tcp"
  from_port         = 6379
  security_group_id = module.redis_sg.sg_id
  source_security_group_id = module.cart_sg.sg_id
  description       = "Allowing Incoming Traffic from cart Servers through Port 6379"
}

// Allow incoming traffic from shipping servers to MySQL on port 3306
resource "aws_security_group_rule" "mysql_ingress_shipping" {
  type              = "ingress"
  to_port           = 3306 
  protocol          = "tcp"
  from_port         = 3306
  security_group_id = module.mysql_sg.sg_id
  source_security_group_id = module.shipping_sg.sg_id
  description       = "Allowing Incoming Traffic from shipping Servers through Port 3306"
}

// Allow incoming traffic from payment servers to RabbitMQ on port 5672
resource "aws_security_group_rule" "rabbit_ingress_payment" {
  type              = "ingress"
  to_port           = 5672
  protocol          = "tcp"
  from_port         = 5672
  security_group_id = module.rabbit_sg.sg_id
  source_security_group_id = module.payment_sg.sg_id
  description       = "Allowing Incoming Traffic from payment Servers through Port 5672"
}

// Allow incoming traffic from cart servers to Catalogue on port 8080
resource "aws_security_group_rule" "catalogue_ingress_cart" {
  type              = "ingress"
  to_port           = 8080
  protocol          = "tcp"
  from_port         = 8080
  security_group_id = module.catalogue_sg.sg_id
  source_security_group_id = module.cart_sg.sg_id
  description       = "Allowing Incoming Traffic from cart Servers through Port 8080"
}

// Allow incoming traffic from web servers to Catalogue on port 8080
resource "aws_security_group_rule" "catalogue_ingress_web" {
  type              = "ingress"
  to_port           = 8080
  protocol          = "tcp"
  from_port         = 8080
  security_group_id = module.catalogue_sg.sg_id
  source_security_group_id = module.web_sg.sg_id
  description       = "Allowing Incoming Traffic from web Servers through Port 8080"
}

// Allow incoming traffic from web servers to User on port 8080
resource "aws_security_group_rule" "user_ingress_web" {
  type              = "ingress"
  to_port           = 8080
  protocol          = "tcp"
  from_port         = 8080
  security_group_id = module.user_sg.sg_id
  source_security_group_id = module.web_sg.sg_id
  description       = "Allowing Incoming Traffic from web Servers through Port 8080"
}

// Allow incoming traffic from payment servers to User on port 8080
resource "aws_security_group_rule" "user_ingress_payment" {
  type              = "ingress"
  to_port           = 8080
  protocol          = "tcp"
  from_port         = 8080
  security_group_id = module.user_sg.sg_id
  source_security_group_id = module.payment_sg.sg_id
  description       = "Allowing Incoming Traffic from payment Servers through Port 8080"
}

// Allow incoming traffic from web servers to Cart on port 8080
resource "aws_security_group_rule" "cart_ingress_web" {
  type              = "ingress"
  to_port           = 8080
  protocol          = "tcp"
  from_port         = 8080
  security_group_id = module.cart_sg.sg_id
  source_security_group_id = module.web_sg.sg_id
  description       = "Allowing Incoming Traffic from web Servers through Port 8080"
}

// Allow incoming traffic from shipping servers to Cart on port 8080
resource "aws_security_group_rule" "cart_ingress_shipping" {
  type              = "ingress"
  to_port           = 8080
  protocol          = "tcp"
  from_port         = 8080
  security_group_id = module.cart_sg.sg_id
  source_security_group_id = module.shipping_sg.sg_id
  description       = "Allowing Incoming Traffic from shipping Servers through Port 8080"
}

// Allow incoming traffic from payment servers to Cart on port 8080
resource "aws_security_group_rule" "cart_ingress_payment" {
  type              = "ingress"
  to_port           = 8080
  protocol          = "tcp"
  from_port         = 8080
  security_group_id = module.cart_sg.sg_id
  source_security_group_id = module.payment_sg.sg_id
  description       = "Allowing Incoming Traffic from payment Servers through Port 8080"
}

// Allow incoming traffic from web servers to Shipping on port 8080
resource "aws_security_group_rule" "shipping_ingress_payment" {
  type              = "ingress"
  to_port           = 8080
  protocol          = "tcp"
  from_port         = 8080
  security_group_id = module.shipping_sg.sg_id
  source_security_group_id = module.web_sg.sg_id
  description       = "Allowing Incoming Traffic from web Servers through Port 8080"
}

// Allow incoming traffic from web servers to Payment on port 8080
resource "aws_security_group_rule" "payment_ingress_payment" {
  type              = "ingress"
  to_port           = 8080
  protocol          = "tcp"
  from_port         = 8080
  security_group_id = module.payment_sg.sg_id
  source_security_group_id = module.web_sg.sg_id
  description       = "Allowing Incoming Traffic from web Servers through Port 8080"
}

// Allow incoming HTTP traffic from the internet to Web servers on port 80
resource "aws_security_group_rule" "web_ingress_internet" {
  type              = "ingress"
  to_port           = 80
  protocol          = "tcp"
  from_port         = 80
  security_group_id = module.web_sg.sg_id
  cidr_blocks      = ["0.0.0.0/0"]
  description      = "Allowing Incoming Traffic from the internet to Web Servers through Port 80"
}
