provider "azurerm" {
  version         = "=2.23.0"
  subscription_id = "9ff47f7f-b0b2-4795-bbb9-e01952900be8"
  client_id       = "a2d632a5-c080-4e6c-a38a-f7432027d714"
  client_secret   = "3Ss7Q~rVPUOQ~jaw0IZJXHkCGSQ._.N4r1Ih2"
  tenant_id       = "ea939422-10f2-4e0a-927d-c4b954812aff"
  features {}
}
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "appletraining"

    workspaces {
      name = "Terraform-azurerm-vinet"
    }
  }
}
