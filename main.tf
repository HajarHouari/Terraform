provider "docker" {}

resource "docker_network" "td_net" {
  name = var.network_name
}

resource "docker_volume" "td_vol" {
  count = var.use_volume ? 1 : 0
  name  = var.volume_name
}

resource "docker_image" "app" {
  name = var.image_name
}

resource "docker_container" "app" {
  name  = var.container_name
  image = docker_image.app.image_id

  env = [for k, v in var.environment : "${k}=${v}"]

  ports {
    internal = var.container_port
    external = var.host_port
  }

  networks_advanced {
    name = docker_network.td_net.name
  }

  dynamic "volumes" {
    for_each = var.use_volume ? [1] : []
    content {
      volume_name    = docker_volume.td_vol[0].name
      container_path = "/usr/share/nginx/html"
    }
  }
}
