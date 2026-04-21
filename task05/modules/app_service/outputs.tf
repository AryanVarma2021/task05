output "name" {
  value       = azurerm_windows_web_app.win_app_service.name
  description = "Name of the windows app service"

}
output "id" {

  value       = azurerm_windows_web_app.win_app_service.id
  description = "Id of the windows app service"

}