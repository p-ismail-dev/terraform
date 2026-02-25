variable "common_tags" {
    default = {
        Project = "Roboshop"
        Terraform = "true"
        Environment = "dev"
    }
  
}

variable "ec2_tags" {
    default =  {
        Name = "function-demo"
        Environment = "dev"
    }
}


variable "sg_tags" {
    default =  {
        Name = "function-demo"
    }
}