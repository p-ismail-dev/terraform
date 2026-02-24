resource "aws_route53_record" "www_record" {
    for_each = aws_instance.example
  zone_id = var.zone_id
  #interpoliation here were are merging two var with ne dot
  name    = "${each.key}.${var.domain_name}" #mongodb.daws70s.online
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip] # Replace with your IP address
  allow_overwrite = true
}