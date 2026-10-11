output "s3control_multi_region_access_point_policies_id" {
  description = "Map of id values across all s3control_multi_region_access_point_policies, keyed the same as var.s3control_multi_region_access_point_policies"
  value       = { for k, v in aws_s3control_multi_region_access_point_policy.s3control_multi_region_access_point_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "s3control_multi_region_access_point_policies_account_id" {
  description = "Map of account_id values across all s3control_multi_region_access_point_policies, keyed the same as var.s3control_multi_region_access_point_policies"
  value       = { for k, v in aws_s3control_multi_region_access_point_policy.s3control_multi_region_access_point_policies : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "s3control_multi_region_access_point_policies_details" {
  description = "Map of details values across all s3control_multi_region_access_point_policies, keyed the same as var.s3control_multi_region_access_point_policies"
  value       = { for k, v in aws_s3control_multi_region_access_point_policy.s3control_multi_region_access_point_policies : k => one(v.details) if v.details != null && length(v.details) > 0 }
}
output "s3control_multi_region_access_point_policies_established" {
  description = "Map of established values across all s3control_multi_region_access_point_policies, keyed the same as var.s3control_multi_region_access_point_policies"
  value       = { for k, v in aws_s3control_multi_region_access_point_policy.s3control_multi_region_access_point_policies : k => v.established if v.established != null && length(v.established) > 0 }
}
output "s3control_multi_region_access_point_policies_proposed" {
  description = "Map of proposed values across all s3control_multi_region_access_point_policies, keyed the same as var.s3control_multi_region_access_point_policies"
  value       = { for k, v in aws_s3control_multi_region_access_point_policy.s3control_multi_region_access_point_policies : k => v.proposed if v.proposed != null && length(v.proposed) > 0 }
}
output "s3control_multi_region_access_point_policies_region" {
  description = "Map of region values across all s3control_multi_region_access_point_policies, keyed the same as var.s3control_multi_region_access_point_policies"
  value       = { for k, v in aws_s3control_multi_region_access_point_policy.s3control_multi_region_access_point_policies : k => v.region if v.region != null && length(v.region) > 0 }
}

