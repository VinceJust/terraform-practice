output "container_name_output" {
  description = "Name des erstellten Docker Containers"
  value       = docker_container.simple_nginx_container.name
}

output "container_external_port" {
  description = "Externer Port des Docker Containers"
  value       = var.external_port
}

output "html_content_used" {
  description = "Der verwendete HTML-Inhalt mit Container-Name"
  value       = "${var.nginx_html_content}<p>Container: ${var.container_name}</p>"
}