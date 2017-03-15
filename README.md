AWS Dns Alias Cloufront Terraform module
===========
A terraform module to add record A DNS for cloudfront alias

Requirements
===========
* Terraform v0.8.5 or higher
* Cloudfront environment

Module Input Variables
----------------------
- `environment` - environment name (i.e. dev,test,prod)
- `alias_domain` - the alias domain
- `cloudfront_url` - cloudfront url
- `cloufront_hosted_zone_id` - cloudfront hosted zone id

Usage
-----
```hcl
module "cloudfront-dns-alias" {
  source = "../../modules/cloudfront-dns-alias/"
  environment = "${var.environment}"
  alias_domain = "${var.alias_domain}"
  cloudfront_url = "${module.cloudfront-frontend.cloudfront_url}"
  cloufront_hosted_zone_id = "${module.cloudfront-frontend.cloufront_hosted_zone_id}"
}
```
Outputs
=======
- `dns_zone_id` - DNS zone id
- `dns_zone_name` - DNS zone name

License
=======
Copyright 2017 Tierra SpA

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.