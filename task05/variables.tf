variable "resource_groups" {

  type = map(object({
    name     = string
    location = string
  }))

  description = "Resource group names and locations"
}


variable "tags" {
  type        = map(string)
  description = "Tag named Creator to be applied to all resources"

}

variable "app_service_plan" {

  type = map(object({
    name               = string
    sku                = string
    instance_count     = number
    resource_group_key = string
    os_type            = string

  }))
  description = "App service plan details"
}



variable "app_service" {
  type = map(object({
    name                 = string
    resource_group_key   = string
    app_service_plan_key = string
  }))
  description = "App service details"

}

variable "app_service_plan_site_config" {

  type = list(object({
    name     = string
    priority = number
    action   = string

    ip_address  = optional(string)
    service_tag = optional(string)
  }))

  description = "App service plan configuration"
}


variable "traffic_manager_name" {
  type        = string
  description = "Name of the traffic manager profile"

}

variable "traffic_routing_method" {
  type        = string
  description = "Traffic routing method for the traffic manager profile"

}


