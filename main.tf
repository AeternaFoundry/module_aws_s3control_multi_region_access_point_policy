resource "aws_s3control_multi_region_access_point_policy" "s3control_multi_region_access_point_policies" {
  for_each = var.s3control_multi_region_access_point_policies

  account_id = each.value.account_id
  region     = each.value.region

  details {
    name   = each.value.details.name
    policy = each.value.details.policy
  }
}

