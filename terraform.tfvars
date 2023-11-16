location = "westeurope"
resource_group_name = "Gregory_E"
storage_account_name = "GregoryEStorageAccount"
storage_account_account_tier = "Standard"
replication_type = "LRS"
storage_container_name = "GregoryEContainer"
storage_blob_name = "GregoryEBlob"
sftp_server_name = "GregoryESFTPServer"
container_access_type = "private" # les choix sont : "private", "blob" ou "container"
blob_type = "Block" 
identity_type = "SystemAssigned"

# Key Vault
key_vault_name = "GregoryEKeyVault"
tenant_id = "votre-tenant-id-ici"  # Remplacer par le tenant ID
key_vault_sku_name = "standard"
soft_delete_retention_days = 7
purge_protection_enabled = true
network_acls_default_action = "Deny"
network_acls_bypass = "AzureServices"
network_acls_ip_rules = []
network_acls_virtual_network_subnet_ids = []
