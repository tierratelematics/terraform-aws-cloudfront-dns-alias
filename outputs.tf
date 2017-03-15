output "dns_zone_id" {
  value = "${aws_route53_zone.PlatformHostedZone.zone_id}"
}

output "dns_zone_name" {
  value = "${aws_route53_zone.PlatformHostedZone.name}"
}