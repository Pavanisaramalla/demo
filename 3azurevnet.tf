resource "azurerm_virtual_network" "lab1" {
  name                = "UKS_MGMT_VNET1"
  location            = "UK South"
  resource_group_name = azurerm_resource_group.lab1.name
    address_space     = ["10.10.0.0/16"]
      tags = {
              project = "demo IAC deployment"
  }
}
resource "azurerm_subnet" "lab1_subnet1" {
  name                 = "UKS_MGMT_WEBSUBNET"
  resource_group_name  = azurerm_resource_group.lab1.name
  virtual_network_name = azurerm_virtual_network.lab1.name
  address_prefixes     = ["10.10.10.0/24"]
}
resource "azurerm_subnet" "lab1_subnet2" {
  name                 = "UKS_MGMT_APPSUBNET"
  resource_group_name  = azurerm_resource_group.lab1.name
  virtual_network_name = azurerm_virtual_network.lab1.name
  address_prefixes     = ["10.10.20.0/24"]
}
resource "azurerm_subnet" "lab1_subnet3" {
  name                 = "UKS_MGMT_DBSUBNET"
  resource_group_name  = azurerm_resource_group.lab1.name
  virtual_network_name = azurerm_virtual_network.lab1.name
  address_prefixes     = ["10.10.30.0/24"]
}