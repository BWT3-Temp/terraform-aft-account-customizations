variable "ipam_regions" {
  type = map(string)
  default =  {
    us-east-1: "10.64.0.0/18" 
    us-east-2: "10.64.64.0/18"
    us-west-1: "10.64.128.0/18"
    us-west-2: "10.64.192.0/18"
   }
}

locals {
  # ensure current provider region is an operating_regions entry
  all_ipam_regions = distinct(concat([data.aws_region.current.name], var.ipam_regions))
}