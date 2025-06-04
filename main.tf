resource "docker_container" "simple_nginx_container" {
  name  = var.container_name
  image = "nginx:latest"

  ports {
    internal = 80
    external = var.external_port
  }

  # Einfacher provisioner für Windows
  provisioner "local-exec" {
    # Kurz warten und dann HTML-Datei erstellen
    command = "sleep 5 && docker exec ${self.name} sh -c \"echo '${replace(var.nginx_html_content, "'", "\\'")} <p>Container: ${var.container_name}</p>' > /usr/share/nginx/html/index.html\""
    interpreter = ["bash", "-c"]
  }
}