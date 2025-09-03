#we need to prviode the provider block 
#using terraform we want to create a resource in azure 
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "raj-cloud" #this will be the rg of your storage account
    storage_account_name = "terraformstateraj" #change this with your own storage account
    container_name = "terrafromstate" 
    key = "skyproject.terrafromstate" #this key can be anything
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
#  resource_provider_registrations = "none" # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
 # delete_os_disk_on_termination = false

  features {}
}