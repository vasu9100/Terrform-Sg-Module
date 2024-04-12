variable "sg_name" {
    type = string
  
}

variable "app_name" {
    type = string
  
}

variable "enviornment" {
    type = string
    default = "dev"
  
}

variable "sg_description" {
  type = string
  validation {
    condition     = length(var.sg_description) > 0
    error_message = "Security Group Description Must Be Provided"
  }
}



variable "vpc_id" {
  type = string
}

variable "common_tags" {
    type = map(string)
    default = {
      "Project" = "Roboshop"
      "Owner"  =  "Srinivas_Gonepudi"
      "BusinessUnit" = "E-kart"
      "Terraform" = "True"
    }
  
}
variable "ingress_rules" {
  type = map(object({
    description = string
    from_port = number
    to_port = number
    protocol = string
    cidr_blocks = list(string)
  }))
  default = {
  }
}

