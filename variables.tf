variable "s3control_multi_region_access_point_policies" {
  description = <<EOT
Map of s3control_multi_region_access_point_policies, attributes below
Required:
    - details (block):
        - name (required)
        - policy (required)
Optional:
    - account_id
    - region
EOT

  type = map(object({
    account_id = optional(string)
    region     = optional(string)
    details = object({
      name   = string
      policy = string
    })
  }))
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

