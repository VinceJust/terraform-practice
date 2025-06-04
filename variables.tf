variable "container_name" {
  type        = string
  description = "Name des Containers"
  default     = "my-flex-nginx-container"
}

variable "external_port" {
  type        = number
  description = "Externer Port, auf dem der Container erreichbar ist"
  default     = 8080
}

variable "nginx_html_content" {
  type        = string
  description = "Basis-HTML-Inhalt für die index.html"
  default     = "<h1>Hello from Terraform!</h1>"
}
