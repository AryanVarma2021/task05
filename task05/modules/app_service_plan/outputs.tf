output "id" {
  value       = azurerm_service_plan.name.id
  description = "Id of the windows app service"

}

output "name" {
  value       = azurerm_service_plan.name.name
  description = "Name of the windows app service"

}