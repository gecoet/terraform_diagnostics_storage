variable "subscription_id" {
    description = "The subscription used for deployment"
    default     = "string"
}
variable "deployment_rg" {
    description = "The resource group the vm will be deployed to"
    default     = "string"
}
variable "deployment_location" {
    description = "The Azure region the vm will be deployed to"
    default     = "South Africa North"
}
variable "storage_account_tier" {
  description = "Defines the storage tier. Valid options are Standard and Premium."
  default     = "Standard"
}
variable "storage_account_type" {
  description = "Defines the type of storage account to be created. Valid options are Standard_LRS, Standard_ZRS, Standard_GRS, Standard_RAGRS, Premium_LRS."
  default     = "Standard_LRS"
}
variable "workspace_name" {
  description = "Defines the log analytics workspace name"
  default     = "string"
}
variable "law_sku" {
  description = "Defines the log analytics sku"
  default     = "string"
}
variable "retention_in_days" {
  description = "Defines the log analytics retention"
  default     = "string"
}
variable "tag_source_deployment" {
  description = "Source of the deployment"
}
variable "tag_environment_deployment" {
  description = "Environment of the deployment"
}