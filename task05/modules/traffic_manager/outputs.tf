output "traffic_manager" {
  value = {
    name = azurerm_traffic_manager_profile.this.name
    id   = azurerm_traffic_manager_profile.this.id
    fqdn = azurerm_traffic_manager_profile.this.fqdn
  }

}