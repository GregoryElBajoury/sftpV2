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

# ------------------- Fin variables azure_storage_sftp.tf ---------------------

