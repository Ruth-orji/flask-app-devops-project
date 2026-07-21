terraform {
  required_providers {
    minikube = {
      source  = "scott-the-programmer/minikube"
      version = "0.4.2"
    }

    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "~> 2.30"
    }
  }
}

provider "minikube" {}

provider "kubernetes" {
  host                   = minikube_cluster.dev.host
  client_certificate     = minikube_cluster.dev.client_certificate
  client_key             = minikube_cluster.dev.client_key
  cluster_ca_certificate = minikube_cluster.dev.cluster_ca_certificate
}