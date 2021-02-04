provider "azurerm" {
  features {}
}

resource "random_id" "example_id" {
  byte_length = 8
}

resource "azurerm_resource_group" "example_rg" {
  name     = "example-${random_id.example_id.hex}-rg"
  location = "northeurope"
}

resource "azurerm_virtual_network" "example_vnet" {
  name                = "example-${random_id.example_id.hex}-vnet"
  resource_group_name = azurerm_resource_group.example_rg.name
  address_space       = ["10.10.10.0/24"]
  location            = "northeurope"
}

module "subnet" {
  source = "../"

  name                 = "example-${random_id.example_id.hex}-subnet"
  resource_group_name  = azurerm_resource_group.example_rg.name
  virtual_network_name = azurerm_virtual_network.example_vnet.name
  address_prefixes     = ["10.10.10.0/28", "10.10.10.16/28"]
}
