resource "docker_image" "nginx" {
  name         = "nginx:alpine3.18"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image    = docker_image.nginx.name
  name     = "Terraform-Nginx"
  must_run = true


  ports {
    internal = 80
    external = 8080
  }
}

