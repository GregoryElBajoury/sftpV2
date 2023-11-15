resource "azurerem_resource_group" "exemple" {
  name    = var.resource_group_name
  location = var.location
}

resource "azurerem_storage_account" "example" {
  name                     = var.azurerm_storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.azurerm_storage_account_account_tier
  account_replication_type = var.azurerm_storage_account_account_replication_type
  is_hns_enabled           = true
  is_sfpt_enabled          = true
}

resource "azurerm_storage_container" "example" {
  name                  = var.storage_container_name
  storage_account_name  = var.azurerm_storage_account.example.name
  container_access_type = var.container_access_type
}

resource "azurerm_storage_blob" "example" {
  name                   = var.storage_blob_name
  storage_account_name   = var.azurerm_storage_account.example.name
  storage_container_name = var.azurerm_storage_container.example.name
  type                   = var.blob_type
}

resource "azurerm_sftp_server" "example" {
  name                = var.azurerm_sftp_server_name
  resource_group_name = var.resource_group_name
  location            = var.location
  storage_account_id  = var.azurerm_storage_account.example.id
  identity {
    type = var.identity_type
  }
}
