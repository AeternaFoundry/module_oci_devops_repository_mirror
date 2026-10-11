resource "oci_devops_repository_mirror" "devops_repository_mirrors" {
  for_each = var.devops_repository_mirrors

  repository_id = each.value.repository_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

