resource "azurerm_resource_group" "lab1" {
  name     = "UKS_MGMT_RG"
  location = "UK South"
  tags={
      project="demo IAC deployment"
  }
}