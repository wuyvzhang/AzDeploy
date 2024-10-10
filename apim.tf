resource "azapi_resource" "apim" {
  type      = "Microsoft.ApiManagement/service@2023-09-01-preview"
  name      = var.apim_a_name
  location  = var.location
  parent_id = azurerm_resource_group.rg.id

  body = {
    properties = {
      apiVersionConstraint = {
        minApiVersion = "2019-12-01"
      }
      publicNetworkAccess = "Disabled"
      publisherEmail      = "company@terraform.io"
      publisherName       = "Cognex"
      sku = {
        capacity = 1
        name     = "StandardV2"
      }
      virtualNetworkConfiguration = {
        subnetResourceId = "/subscriptions/177add63-2747-4d6d-a5e4-004dc63b04c6/resourceGroups/RG-W2K16-Demo-JPE/providers/Microsoft.Network/virtualNetworks/SR-W2k16-01-vnet/subnets/apim"

      }
      virtualNetworkType = "External"
    }
  }
  response_export_values = ["properties.gatewayUrl"]
}