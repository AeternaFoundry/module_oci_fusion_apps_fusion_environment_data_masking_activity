resource "oci_fusion_apps_fusion_environment_data_masking_activity" "fusion_apps_fusion_environment_data_masking_activities" {
  for_each = var.fusion_apps_fusion_environment_data_masking_activities

  fusion_environment_id  = each.value.fusion_environment_id
  is_resume_data_masking = each.value.is_resume_data_masking

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

