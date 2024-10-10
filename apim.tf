resource "azurerm_api_management" "apim" {
  name                          = "apim-demo-jpe-001"
  location                      = var.location
  resource_group_name           = var.resource_group_name
  publisher_name                = "My Company"
  publisher_email               = "company@terraform.io"
  sku_name                      = "Developer_1"
  public_network_access_enabled = false
  virtual_network_type          = "Internal"
  virtual_network_configuration {
    subnet_id = "/subscriptions/177add63-2747-4d6d-a5e4-004dc63b04c6/resourceGroups/RG-W2K16-Demo-JPE/providers/Microsoft.Network/virtualNetworks/SR-W2k16-01-vnet/subnets/apim"
  }
}