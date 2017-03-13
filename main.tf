resource "aws_route53_delegation_set" "PlatformDelegationSet" {
  reference_name = "${var.environment}"
}

resource "aws_route53_zone" "PlatformHostedZone" {
  name = "${var.alias_domain}"
  delegation_set_id = "${aws_route53_delegation_set.PlatformDelegationSet.id}"
}

resource "aws_route53_record" "PlatformWebsiteRecord" {
  zone_id = "${aws_route53_zone.PlatformHostedZone.zone_id}"
  name = "${aws_route53_zone.PlatformHostedZone.name}"
  type = "A"
  alias {
    name = "${var.cloudfront_url}"
    zone_id = "${var.cloufront_hosted_zone_id}"
    evaluate_target_health = false
  }
}