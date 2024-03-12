resource "azurerm_resource_group" "testrg" {
  name     = "testrg1"
  location = "centralindia"
}
resource "azurerm_virtual_network" "testvn" {
  name                = "testvn1"
  resource_group_name = azurerm_resource_group.testrg.name
  location            = azurerm_resource_group.testrg.location
  address_space       = ["10.0.0.0/16"]
}
resource "azurerm_subnet" "testsub" {
  name                 = "testsub1"
  resource_group_name  = azurerm_resource_group.testrg.name
  virtual_network_name = azurerm_virtual_network.testvn.name
  address_prefixes = ["10.0.0.0/24"] 
}
resource "azurerm_public_ip" "testip" {
  name                = "testip1"
  resource_group_name = azurerm_resource_group.testrg.name
  location            = azurerm_resource_group.testrg.location
  allocation_method   = "Dynamic"
}
resource azurerm_network_interface testnf {
name = "testnf1"
location = azurerm_resource_group.testrg.location
resource_group_name = azurerm_resource_group.testrg.name
ip_configuration {
    name                          = "testnf1"
    subnet_id                     = azurerm_subnet.testsub.id
    private_ip_address_allocation = "Dynamic"
  }
}


