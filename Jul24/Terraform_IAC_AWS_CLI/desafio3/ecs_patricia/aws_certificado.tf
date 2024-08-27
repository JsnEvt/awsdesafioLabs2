resource "aws_acm_certificate" "imported_cert" {
  domain_name       = "blog.praco.com.br"
  validation_method = "DNS"  
}