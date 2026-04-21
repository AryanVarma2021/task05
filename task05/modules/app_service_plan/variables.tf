variable "app_service_plan_name" {
  type        = string
  description = "Name of the App Service Plan"

}

variable "worker_count" {
  type        = number
  description = "Number of workers for the App Service Plan"

}

variable "sku" {
  type        = string
  description = "SKU for the App Service Plan"

}

variable "tags" {
  type        = map(string)
  description = "Tag named Creator to be applied to all resources"

}
variable "location" {
  type        = string
  description = "Location of the App Service Plan"

}
variable "resource_group" {
  type        = string
  description = "Name of the Resource Group where the App Service Plan will be created"

}

variable "os_type" {
  type        = string
  description = "Operating System type for the App Service Plan (e.g., Windows or Linux)"

}