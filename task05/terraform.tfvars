tags = {
  "Creator" = "aryan_pramodkumarvarma@epam.com"
}

resource_groups = {

  "rg_1" = {
    name     = "cmaz-z5t7jrzx-mod5-rg-01"
    location = "eastus"
  },

  "rg_2" = {
    name     = "cmaz-z5t7jrzx-mod5-rg-02"
    location = "westus"
  },

  "rg_3" = {
    name     = "cmaz-z5t7jrzx-mod5-rg-03"
    location = "centralus"
  }

}



app_service_plan = {

  "app_service_plan_1" = {
    name               = "cmaz-z5t7jrzx-mod5-asp-01"
    instance_count     = 2
    resource_group_key = "rg_1"
    sku                = "S1"
    os_type            = "Windows"
  },


  "app_service_plan_2" = {
    name               = "cmaz-z5t7jrzx-mod5-asp-02"
    instance_count     = 1
    resource_group_key = "rg_2"
    sku                = "S1"
    os_type            = "Windows"
  }



}

app_service = {
  "app_service_1" = {
    name                 = "cmaz-z5t7jrzx-mod5-app-01"
    resource_group_key   = "rg_1"
    app_service_plan_key = "app_service_plan_1"
  },


  "app_service_2" = {
    name                 = "cmaz-z5t7jrzx-mod5-app-02"
    resource_group_key   = "rg_2"
    app_service_plan_key = "app_service_plan_2"
  }
}

app_service_plan_site_config = [

  {
    name       = "allow-ip"
    priority   = 100
    action     = "Allow"
    ip_address = "18.153.146.156/32"
  },
  {
    name        = "allow-tm"
    priority    = 200
    action      = "Allow"
    service_tag = "AzureTrafficManager"
  },
  {
    name       = "deny all"
    priority   = 2147483647
    action     = "Deny"
    ip_address = "0.0.0.0/0"
  }




]


traffic_manager_name   = "cmaz-z5t7jrzx-mod5-traf"
traffic_routing_method = "Performance"



