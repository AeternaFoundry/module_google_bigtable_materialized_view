output "bigtable_materialized_views_id" {
  description = "Map of id values across all bigtable_materialized_views, keyed the same as var.bigtable_materialized_views except keys with no id are omitted"
  value       = { for k, v in google_bigtable_materialized_view.bigtable_materialized_views : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bigtable_materialized_views_deletion_policy" {
  description = "Map of deletion_policy values across all bigtable_materialized_views, keyed the same as var.bigtable_materialized_views except keys with no deletion_policy are omitted"
  value       = { for k, v in google_bigtable_materialized_view.bigtable_materialized_views : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "bigtable_materialized_views_deletion_protection" {
  description = "Map of deletion_protection values across all bigtable_materialized_views, keyed the same as var.bigtable_materialized_views except keys with no deletion_protection are omitted"
  value       = { for k, v in google_bigtable_materialized_view.bigtable_materialized_views : k => v.deletion_protection if v.deletion_protection != null }
}
output "bigtable_materialized_views_instance" {
  description = "Map of instance values across all bigtable_materialized_views, keyed the same as var.bigtable_materialized_views except keys with no instance are omitted"
  value       = { for k, v in google_bigtable_materialized_view.bigtable_materialized_views : k => v.instance if v.instance != null && length(v.instance) > 0 }
}
output "bigtable_materialized_views_materialized_view_id" {
  description = "Map of materialized_view_id values across all bigtable_materialized_views, keyed the same as var.bigtable_materialized_views except keys with no materialized_view_id are omitted"
  value       = { for k, v in google_bigtable_materialized_view.bigtable_materialized_views : k => v.materialized_view_id if v.materialized_view_id != null && length(v.materialized_view_id) > 0 }
}
output "bigtable_materialized_views_name" {
  description = "Map of name values across all bigtable_materialized_views, keyed the same as var.bigtable_materialized_views except keys with no name are omitted"
  value       = { for k, v in google_bigtable_materialized_view.bigtable_materialized_views : k => v.name if v.name != null && length(v.name) > 0 }
}
output "bigtable_materialized_views_project" {
  description = "Map of project values across all bigtable_materialized_views, keyed the same as var.bigtable_materialized_views except keys with no project are omitted"
  value       = { for k, v in google_bigtable_materialized_view.bigtable_materialized_views : k => v.project if v.project != null && length(v.project) > 0 }
}
output "bigtable_materialized_views_query" {
  description = "Map of query values across all bigtable_materialized_views, keyed the same as var.bigtable_materialized_views except keys with no query are omitted"
  value       = { for k, v in google_bigtable_materialized_view.bigtable_materialized_views : k => v.query if v.query != null && length(v.query) > 0 }
}

