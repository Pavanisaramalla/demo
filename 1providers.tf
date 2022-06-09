terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.2.0"
    }
  }
}

# Configure the Microsoft Azure Providers
provider "azurerm" {
  features {}

  subscription_id = "522gcjj,kh.jjbjjnkhk"
  client_id       = "c6vvhvhkhfhfh46-70dbff00ce25"
  client_secret   = "UwP8Q~umALQvR b bnnncY7iev2XJCc6al7"
  tenant_id       = "eb873a28-c290n-a676-fe67c7d08013"
}