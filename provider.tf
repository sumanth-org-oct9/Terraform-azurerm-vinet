provider "azurerm" {
  version         = "=2.23.0"
  subscription_id = "5ac4ddb1-1638-4fd0-83ca-1fdc58c927db"
  client_id       = "9f9bd107-d4cf-43c5-afdd-ed0afe0b0016"
  client_secret   = "kXeDv2w3-d3dkt7pC3EF.VEz8.3p9-z6t-"
  tenant_id       = "1a202a9a-9222-4d0a-9842-7292fb1465ab"
  features {}
}
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "appltraining"

    workspaces {
      name = "Terraform-azurerm-vinet"
    }
  }
}