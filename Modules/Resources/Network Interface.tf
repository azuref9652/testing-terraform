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

