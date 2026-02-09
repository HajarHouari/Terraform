output "container_name" {
  value = docker_container.app.name
}

output "container_id" {
  value = docker_container.app.id
}

output "published_port" {
  value = var.host_port
}

output "local_url" {
  value = "http://localhost:${var.host_port}"
}

output "network_name" {
  value = docker_network.td_net.name
}

output "volume_name" {
  value = var.use_volume ? docker_volume.td_vol[0].name : null
}
