module "RG" {

  source = "./modules/resource_group"

  for_each = var.resource_groups

  name     = each.value.name
  location = each.value.location

  tags = var.tags




}


module "APP_SERVICE_PLAN" {

  source = "./modules/app_service_plan"

  for_each = var.app_service_plan

  app_service_plan_name = each.value.name
  sku                   = each.value.sku
  worker_count          = each.value.instance_count
  location              = module.RG[each.value.resource_group_key].location
  resource_group        = module.RG[each.value.resource_group_key].name
  os_type               = each.value.os_type

  tags = var.tags


}


module "APP_SERVICE" {

  source = "./modules/app_service"

  for_each = var.app_service

  name           = each.value.name
  resource_group = module.RG[each.value.resource_group_key].name
  location       = module.RG[each.value.resource_group_key].location

  service_plan_id = module.APP_SERVICE_PLAN[each.value.app_service_plan_key].id

  app_service_plan_site_config = var.app_service_plan_site_config

  tags = var.tags


}


module "TRAFFIC_MANAGER" {
  source = "./modules/traffic_manager"

  name = var.traffic_manager_name

  traffic_routing_method = var.traffic_routing_method

  resource_group = module.RG["rg_3"].name

  traffic_manager_endpoints = {


    for key, app in module.APP_SERVICE : key => {
      name               = app.name
      target_resource_id = app.id
    }


  }





  tags = var.tags




}