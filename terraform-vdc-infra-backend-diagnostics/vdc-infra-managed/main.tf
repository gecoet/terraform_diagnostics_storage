
# Defining the Resource Group for vm's 
data "azurerm_resource_group" "rg" {
  name = var.deployment_rg
}

# Creat Storage Account for diagostics
resource "azurerm_storage_account" "test" {
  name                     = "storageaccountname"
  resource_group_name      = "${azurerm_resource_group.test.name}"
  location                 = "${var.deployment_location}"
  account_tier             = "${var.storage_account_tier}"
  account_replication_type = "${var.storage_account_type}"
  tags = {
    source = var.tag_source_deployment
    environment = var.tag_environment_deployment
  }
}
# Creat Log Analytics Workspace
resource "azurerm_log_analytics_workspace" "logs" {
  name                = "${var.workspace_name}-logs"
  location            = "${var.deployment_location}"
  resource_group_name = "${data.azurerm_resource_group.rg.name}"
  sku                 = "${var.law_sku}"
  retention_in_days   = "${var.retention_in_days}"

  tags = {
    source = var.tag_source_deployment
    environment = var.tag_environment_deployment
  }
}


