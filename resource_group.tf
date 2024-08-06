#Create a resource group in east us region
resource "azurerm_resource_group" "myrg1" {
  name     = "myrg-1"
  location = "East US"
}
# Create a resource group in west us region
resource "azurerm_resource_group" "myrg2" {
  name = "myrg-2"
  location = "West US"
  provider = azurerm.provider2-westus
}