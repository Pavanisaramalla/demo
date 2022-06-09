resource "azurerm_network_security_group" "lab1" {
  name                = "UKSMGMTNSG"
  location            = "UK South"
  resource_group_name = azurerm_resource_group.lab1.name

  security_rule {
    name                       = "loginwindow"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
   security_rule {
    name                       = "loginlinux"
    priority                   = 101
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    project = "demo IAC Deployment"
  }
}