#Terraform block
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>2.64"
    }
  }
}
#Provider 1 Eastus (Default provider)
provider "azurerm" {
  features {}
}
#Provider 2 for westus

provider "azurerm" {
  features {
    virtual_machine {
      delete_os_disk_on_deletion = false
    }
  }
  #give alias name because confusion about provider
  alias = "provider2-westus"
  #As per your requirement give the provider requirtements.
  #client_id
}