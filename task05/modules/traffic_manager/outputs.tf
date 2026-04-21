output "traffic_manager_fqdn" {
  value       = azurerm_traffic_manager_profile.this.fqdn
  description = "FQDN of the traffic manager profile"

}