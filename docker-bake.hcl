variable "TAG" {
  default = "latest"
}

group "default" {
  targets = ["build-1"]
}

target "build-1" {
  dockerfile = "Dockerfile"
}
