resource "aws_acm_certificate" "imported_cert" {
  domain_name       = "formacao.jsnawsdev.com.br"
  validation_method = "DNS"
}
