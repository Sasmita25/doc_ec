variable "TAG" {
  default = "latest"
}

group "default" {
  targets = ["build-1", "build-2"]
}

target "build-1" {
  dockerfile = "./Dockerfile_1"
  tags = ["${{ secrets.AWS_ECR }}:latest2"]
}

target "build-2" {
  dockerfile = "./Dockerfile_2"
   tags = ["${{ secrets.AWS_ECR }}:${TAG}"]
}
