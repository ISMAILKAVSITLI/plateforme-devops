variable "nom_cluster" {
  description = "Nom du cluster kind"
  type        = string
}

variable "version_argocd" {
  description = "Version du chart argo-cd"
  type        = string
}

variable "depot" {
  description = "Adresse https du dépôt git"
  type        = string
}