container_name = "nginx-td"
image_name     = "nginx:latest"
host_port      = 8080
container_port = 80
network_name   = "net-td"
use_volume     = true
volume_name    = "vol-td"

environment = {
  NGINX_HOST = "localhost"
}