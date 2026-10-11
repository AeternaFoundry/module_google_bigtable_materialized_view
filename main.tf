resource "google_bigtable_materialized_view" "bigtable_materialized_views" {
  for_each = var.bigtable_materialized_views

  materialized_view_id = each.value.materialized_view_id
  query                = each.value.query
  deletion_policy      = each.value.deletion_policy
  deletion_protection  = each.value.deletion_protection
  instance             = each.value.instance
  project              = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

