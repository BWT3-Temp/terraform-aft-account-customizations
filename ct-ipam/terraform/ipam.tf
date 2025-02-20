resource "aws_vpc_ipam" "main" {
  description = "multi region ipam"
  dynamic operating_regions {
    for_each = var.ipam_regions
    content {
      region_name = operating_regions.key
    }
  }
}