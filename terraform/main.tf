resource "minikube_cluster" "dev" {
  driver           = "docker"
  cluster_name     = "flask-devops"
  kubernetes_version = "v1.30.0"
}