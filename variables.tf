variable "fusion_apps_fusion_environment_data_masking_activities" {
  description = <<EOT
Map of fusion_apps_fusion_environment_data_masking_activities, attributes below
Required:
    - fusion_environment_id
Optional:
    - is_resume_data_masking
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    fusion_environment_id  = string
    is_resume_data_masking = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

