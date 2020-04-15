resource "aws_acm_certificate" "jigokumimi" {
  domain_name               = data.aws_route53_zone.jigokumimi.name
  validation_method         = "DNS"
}
