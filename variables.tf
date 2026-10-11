variable "devops_repository_mirrors" {
  description = <<EOT
Map of devops_repository_mirrors, attributes below
Required:
    - repository_id
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    repository_id = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

