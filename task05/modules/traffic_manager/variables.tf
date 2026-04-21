variable "name" {
  type        = string
  description = "Name of the windows app service"

}

variable "resource_group" {
  type        = string
  description = "resource group name of the windows app service"

}

variable "traffic_routing_method" {
  type        = string
  description = "Traffic routing method for the traffic manager profile"

}
variable "tags" {
  type        = map(string)
  description = "Tag named Creator to be applied to all resources"

}

variable "traffic_manager_endpoints" {
  type = map(object({
    name               = string
    target_resource_id = string
  }))

}