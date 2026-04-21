resource "azurerm_windows_web_app" "win_app_service" {

  service_plan_id     = var.service_plan_id
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group


  site_config {
    dynamic "ip_restriction" {

      for_each = var.app_service_plan_site_config

      content {
        name     = ip_restriction.value.name
        priority = ip_restriction.value.priority
        action   = ip_restriction.value.action

        ip_address  = try(ip_restriction.value.ip_address, null)
        service_tag = try(ip_restriction.value.service_tag, null)
      }

    }

    ip_restriction_default_action = "Deny"


  }

  tags = var.tags
}


