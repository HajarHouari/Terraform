variable "container_name" {
  type        = string
  description = "Nom du container Docker"
  default     = "td-nginx"
}

variable "image_name" {
  type        = string
  description = "Image Docker à utiliser"
  default     = "nginx:latest"
}

variable "host_port" {
  type        = number
  description = "Port exposé sur l'hôte"
  default     = 8080
}

variable "container_port" {
  type        = number
  description = "Port du service dans le container"
  default     = 80
}

variable "environment" {
  type        = map(string)
  description = "Variables d'environnement du container"
  default     = {}
}

variable "network_name" {
  type        = string
  description = "Nom du réseau Docker dédié"
  default     = "td-terraform-net"
}

variable "use_volume" {
  type        = bool
  description = "Activer un volume Docker pour persistance"
  default     = true
}

variable "volume_name" {
  type        = string
  description = "Nom du volume Docker"
  default     = "td-terraform-vol"
}
