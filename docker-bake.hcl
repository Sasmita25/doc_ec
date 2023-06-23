variable "TAG" {
  default = ${{env.TAG}}
}

group "default" {
  targets = ["build-1","build-2"]
}

target "build-1" {
  dockerfile = "Dockerfile"
}

target "build-2" {
  dockerfile = "Dockerfile2"
}
