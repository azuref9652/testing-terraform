resource "azurerm_subnet" "testsub" {
  name                 = "testsub1"
  resource_group_name  = azurerm_resource_group.testrg.name
  virtual_network_name = azurerm_virtual_network.testvn.name
  address_prefixes = ["10.0.0.0/24"] 
}