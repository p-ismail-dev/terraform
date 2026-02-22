output "roboshop_instances" {
    value = aws_instance.example
    description = "description"
}

output "fruits_name" {
    value = var.fruits
  
}

output "set_of_fruits" {
    value = var.fruits_set
  
}