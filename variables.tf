#  -------------------  Variables azure_storage_sftp.tf ---------------------
variable "location" {
  description = "La localisation à utiliser pour le déploiement des ressources"
  type        = string
}

variable "resource_group_name" {
  description = "Le nom du groupe de ressources à utiliser pour le déploiement des ressources"
  type        = string
}

variable "storage_account_name" {
  description = "Le nom du compte de stockage à utiliser pour le déploiement des ressources"
  type        = string
}

variable "storage_account_account_tier" {
  description = "Le type de compte de stockage à utiliser pour le déploiement des ressources"
  type        = string
}

variable "replication_type" {
  description = "Le type de réplication à utiliser pour le déploiement des ressources"
  type        = string
}

variable "storage_container_name" {
  description = "Le nom du conteneur de stockage"
  type        = string
}

variable "storage_blob_name" {
  description = "Le nom du blob à utiliser pour le déploiement des ressources"
  type        = string
}

variable "sftp_server_name" {
  description = "Le nom du serveur SFTP"
  type        = string
}

variable "container_access_type" {
  description = "Le type d'accès au conteneur de stockage"
  type        = string
  default     = "private"
}

variable "blob_type" {
  description = "Le type de blob de stockage"
  type        = string
  default     = "Block"
}

variable "identity_type" {
  description = "Le type d'identité pour le serveur SFTP"
  type        = string
  default     = "SystemAssigned"
}

variable "key_vault_name" {
  description = "Le nom du Key Vault à utiliser pour le déploiement des ressources"
  type        = string
}

variable "tenant_id" {
  description = "L'ID de locataire Azure Active Directory de votre abonnement Azure"
  type        = string
}

variable "key_vault_sku_name" {
  description = "Le niveau de service pour le Key Vault (standard ou premium)"
  type        = string
}

variable "soft_delete_retention_days" {
  description = "Le nombre de jours pendant lesquels le Key Vault conserve les éléments supprimés"
  type        = number
}

variable "purge_protection_enabled" {
  description = "Un booléen pour activer ou désactiver la protection contre la purge"
  type        = bool
}

variable "network_acls_default_action" {
  description = "L'action par défaut pour le contrôle d'accès réseau (Allow ou Deny)"
  type        = string
}

variable "network_acls_bypass" {
  description = "Définit quel trafic peut contourner les règles du réseau (par exemple, AzureServices)"
  type        = string
}

variable "network_acls_ip_rules" {
  description = "Liste des adresses IP ou plages d'IP autorisées à accéder au Key Vault"
  type        = list(string)
}

variable "network_acls_virtual_network_subnet_ids" {
  description = "Les ID des sous-réseaux du réseau virtuel autorisés à accéder au Key Vault"
  type        = list(string)
}


# ------------------- Fin variables azure_storage_sftp.tf ---------------------
