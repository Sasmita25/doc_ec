variable "TAG" {
  default = "latest"
}

group "default" {
  targets = ["build-1"]
}

target "build-1" {
  dockerfile = "Dockerfile"
  tags = ["376329890665.dkr.ecr.us-east-1.amazonaws.com/krishna-cf-test:${TAG}"]
}
