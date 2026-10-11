output "devops_repository_mirrors_id" {
  description = "Map of id values across all devops_repository_mirrors, keyed the same as var.devops_repository_mirrors except keys with no id are omitted"
  value       = { for k, v in oci_devops_repository_mirror.devops_repository_mirrors : k => v.id if v.id != null && length(v.id) > 0 }
}
output "devops_repository_mirrors_repository_id" {
  description = "Map of repository_id values across all devops_repository_mirrors, keyed the same as var.devops_repository_mirrors except keys with no repository_id are omitted"
  value       = { for k, v in oci_devops_repository_mirror.devops_repository_mirrors : k => v.repository_id if v.repository_id != null && length(v.repository_id) > 0 }
}

