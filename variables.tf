variable "bigtable_materialized_views" {
  description = <<EOT
Map of bigtable_materialized_views, attributes below
Required:
    - materialized_view_id
    - query
Optional:
    - deletion_policy
    - deletion_protection
    - instance
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    materialized_view_id = string
    query                = string
    deletion_policy      = optional(string)
    deletion_protection  = optional(bool)
    instance             = optional(string)
    project              = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

