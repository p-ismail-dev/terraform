resource "aws_route53_record" "www_record" {
    count = 10
  zone_id = var.zone_id
  #interpoliation here were are merging two var with ne dot
  name    = "${var.instances[count.index]}.${var.domain_name}" #mongodb.daws70s.online
  type    = "A"
  ttl     = 1
  records = [aws_instance.example [count.index].private_ip] # Replace with your IP address
}



#As part of the functions
resource "aws_route53_record" "www_record" {
    count = 10
  zone_id = var.zone_id
  #interpoliation here were are merging two var with ne dot
  name    = "Roboshop.${var.domain_name}" #Roboshop.daws70s.online
  type    = "A"
  ttl     = 1
  records = [aws_instance.example[index(var.instances, "frontend").public_ip]] # Replace with your IP address
}