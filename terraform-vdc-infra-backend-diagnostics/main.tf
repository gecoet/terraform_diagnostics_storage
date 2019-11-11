provider "azurerm"{}

terraform {
  backend "azurerm" {
    resource_group_name  = "SBSA-CIB-Risk-Infrastructure"
    storage_account_name = "sbsasancibrisk001"
    container_name       = "sbsasancibrisk001"
    key                  = "starter.terraform.tfstate"
  }
}

module "terraform_vdc_infra_backend_diagnostics" {
  source = "./vdc-infra-managed"
# Storage account for diagnostics
  deployment_rg = "${var.deployment_rg}"
  deployment_location = "${var.deployment_location}"
  storage_account_tier = "${var.storage_account_tier}"
  account_replication_type = "${var.storage_account_type}"

# Log Analytics Worksace
  workspace_name = "${var.workspace_name}"
  law_sku = "${var.law_sku}"

# General Variables
  tag_source_deployment = "${var.tag_source_deployment}"
  tag_environment_deployment = "${var.tag_environment_deployment}"
}
