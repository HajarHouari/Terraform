variable "image_name" {
  description = "Docker image to run (e.g., nginx:latest)"
  type        = string
  default     = "nginx:latest"
}

variable "container_name" {
  description = "Name of the Docker container"
  type        = string
  default     = "td_app"
}

variable "host_port" {
  description = "Port exposed on the host (e.g., 8080)"
  type        = number
  default     = 8080
}

variable "container_port" {
  description = "Internal port in the container (e.g., 80 for nginx)"
  type        = number
  default     = 80
}

variable "environment" {
  description = "Environment variables for the container"
  type        = map(string)
  default     = {}
}

variable "network_name" {
  description = "Name of the Docker network"
  type        = string
  default     = "td_net"
}

variable "use_volume" {
  description = "Whether to create and mount a persistent volume"
  type        = bool
  default     = true
}

variable "volume_name" {
  description = "Name of the Docker volume"
  type        = string
  default     = "td_vol"
}
