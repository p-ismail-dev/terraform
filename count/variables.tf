variable "instances" {
    type = list
    default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend"]
}

variable "zone_id" {
    default = "Z10087642II817RBVLQWT"  
}

variable "domain_name" {
    default = "daws70s.online"
  
}

variable "fruits" {
    type = list(string) #list will allow duplicate values
    default = ["apple", "orange", "mango", "apple"]
  
}

variable "fruits_set" {
    type = set(string) #set will not the duplicte values
    default = ["apple", "orange", "mango", "apple"]
  
}