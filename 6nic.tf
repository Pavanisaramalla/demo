resource "azurerm_network_interface" "lab1" {
  name                = "UKSMGMTWVM1NIC"
  location            = "Uk South"
  resource_group_name = "azurerm_resource_group.lab1.name"

  ip_configuration {
    name                          = "UKSMGMTWVM1ip"
    subnet_id                     = "azurerm_subnet.lab1_subnet1.id"
    private_ip_address_allocation = "Dynamic"
  }

  tags = {
    project = "demo IAC deployment"
  }
}