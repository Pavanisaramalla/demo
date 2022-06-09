resource "azurerm_public_ip" "lab1" {
  name                = "UKSMGMTVM1pip"
  resource_group_name = azurerm_resource_group.lab1.name
  location            = "UK South"
  allocation_method   = "Static"

  tags = {
    projetc = "demo IAC Deployment"
  }
}