# Set the variable value in *.tfvars file
# or using the -var="hcloud_token=..." CLI option

variable "hcloud_token" {
  type        = string
  description = "The 64 digit API token"
}

variable "hdns_token" {
  type        = string
  description = "The DNS API token"
}

variable "dns_zone" {
  type = string
  description = "DNS Zone to use for DNS Records. Example: example.com"
}

variable "machines" {
  type = map
  description = "Hash of IP, Role, HW size to use for student maschines."
  default = {
    puppetca = { ip = "10.0.8.7",  server_type = "cx21", image = "centos-stream-8" }
    puppet   = { ip = "10.0.8.8",  server_type = "cx21", image = "centos-stream-8" }
    puppetdb = { ip = "10.0.8.9",  server_type = "cx11", image = "centos-stream-8" }
  }
}

variable "ext_sub_domain" {
  type = string
  description = "external subdomain name"
  default = "pub.rw"
}

variable "int_sub_domain" {
  type = string
  description = "external subdomain name"
  default = "priv.rw"
}
