resource "azurerm_virtual_network" "testvn" {
  name                = "testvn1"
  resource_group_name = azurerm_resource_group.testrg.name
  location            = azurerm_resource_group.testrg.location
  address_space       = ["10.0.0.0/16"]
}