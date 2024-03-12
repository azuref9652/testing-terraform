resource "azurerm_public_ip" "testip" {
  name                = "testip1"
  resource_group_name = azurerm_resource_group.testrg.name
  location            = azurerm_resource_group.testrg.location
  allocation_method   = "Dynamic"
}
