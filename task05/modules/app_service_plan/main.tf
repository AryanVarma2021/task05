resource "azurerm_service_plan" "name" {

  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = var.resource_group
  os_type             = var.os_type

  sku_name     = var.sku
  worker_count = var.worker_count


  tags = var.tags





}