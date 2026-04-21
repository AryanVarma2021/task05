# service_plan_id = ""
#   name = ""
#   location = ""
#   resource_group_name = ""

#   site_config {}

variable "name" {
  type        = string
  description = "Name of the windows app service"

}
variable "location" {
  type        = string
  description = "location of the windows app service"
}
variable "resource_group" {
  type        = string
  description = "resource group name of the windows app service"

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
variable "service_plan_id" {
  type        = string
  description = "Id of the service plan"

}

variable "tags" {
  type        = map(string)
  description = "Tag named Creator to be applied to all resources"

}

