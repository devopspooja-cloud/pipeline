terraform {

  backend "azurerm" {
    resource_group_name  = "rgs-terraformstate"
    storage_account_name = "devops2017"
    container_name       = "rgs"
    key                  = "rg1.terraform.tfstate"
    subscription_id      = "5081dcef-1902-417b-b59f-96649378f4eb"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "5081dcef-1902-417b-b59f-96649378f4eb"

}

module "resource_group" {
  source = "C:/Devops/practice/resource_group/rg/rg/module"
}

module "rishna-rg123" {
  source = "C:/Devops/practice/resource_group/rg/rg/module"

  
}