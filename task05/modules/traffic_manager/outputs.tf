output "traffic_manager_fqdn" {
  value       = azurerm_traffic_manager_profile.traffic_manager_profile.fqdn
  description = "FQDN of the traffic manager profile"

}