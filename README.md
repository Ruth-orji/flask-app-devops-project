# Flask DevOps Project 🚀

A complete end-to-end DevOps project demonstrating modern CI/CD and GitOps practices using a simple Flask application deployed to Kubernetes.

![Python](https://img.shields.io/badge/Python-3.14-blue?logo=python)
![Flask](https://img.shields.io/badge/Flask-Web_App-black?logo=flask)
![Docker](https://img.shields.io/badge/Docker-Containerized-2496ED?logo=docker&logoColor=white)
![Kubernetes](https://img.shields.io/badge/Kubernetes-Orchestration-326CE5?logo=kubernetes&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-IaC-7B42BC?logo=terraform&logoColor=white)
![Helm](https://img.shields.io/badge/Helm-Charts-0F1689?logo=helm)
![ArgoCD](https://img.shields.io/badge/ArgoCD-GitOps-EF7B4D?logo=argo)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-CI/CD-2088FF?logo=githubactions)

> **An end-to-end DevOps project demonstrating CI/CD and GitOps by deploying a Flask application to Kubernetes using Docker, GitHub Actions, Terraform, Helm, and Argo CD.**

---

## 📖 Overview

This repository demonstrates a complete DevOps workflow from application development to automated Kubernetes deployment. The sample Flask application exposes a simple HTTP endpoint that returns a greeting message together with the current server timestamp. It serves as the workload for demonstrating a complete DevOps and GitOps deployment pipeline.

---

## 🔄 Project Workflow

This project follows a modern DevOps workflow:

1. The developer pushes code to GitHub.
2. GitHub Actions automatically builds and pushes a Docker image to Docker Hub.
3. Terraform provisions the Kubernetes environment.
4. Helm manages the Kubernetes deployment.
5. Argo CD continuously synchronizes the cluster with the Git repository.
6. The Flask application is deployed automatically into Minikube.

---

## 📑 Table of Contents

- [Overview](#-overview)
- [Project Workflow](#-project-workflow)
- [Features](#-features)
- [Technology Stack](#️-technology-stack)
- [Solution Architecture](#️-solution-architecture)
- [CI/CD Pipeline](#-cicd-pipeline)
- [GitOps Workflow](#-gitops-workflow)
- [Kubernetes Deployment](#-kubernetes-deployment)
- [Project Structure](#-project-structure)
- [Getting Started](#-getting-started)
- [Prerequisites](#-prerequsite)
- [Project Screenshots](#-project-screenshots)
- [Key Skills Demonstrated](#-key-skill-demonstrated)
- [Future Improvements](#-future-improvements)
- [Author](#-author)
- [License](#-license)

---

## ✨ Features

- Containerized Flask application with Docker
- Infrastructure provisioning using Terraform
- Local Kubernetes cluster with Minikube
- Helm chart for Kubernetes deployments
- Continuous Integration using GitHub Actions
- GitOps continuous deployment with Argo CD
- Docker Hub image publishing
- End-to-end DevOps workflow

---

# 🛠️ Technology Stack

| Category | Technology |
|----------|------------|
| Language | Python |
| Framework | Flask |
| Containerization | Docker |
| Container Registry | Docker Hub |
| CI/CD | GitHub Actions |
| Infrastructure as Code | Terraform |
| Container Orchestration | Kubernetes (Minikube) |
| Kubernetes Package Manager | Helm |
| GitOps | Argo CD |
| Version Control | Git & GitHub |

## 🏗️ Solution Architecture

The diagram below illustrates the complete DevOps workflow, showing how application code flows from development through CI/CD and GitOps into a Kubernetes cluster.

<p align="center">
  <img src="docs/diagrams/architecture.png" width="900">
</p>

## 🔄 CI/CD Pipeline

The CI/CD pipeline automatically builds and publishes a Docker image to Docker Hub whenever changes are pushed to the `main` branch using GitHub Actions.

<p align="center">
  <img src="docs/diagrams/cicd-pipeline.png" width="900">
</p>

## ☸️ GitOps Workflow

Argo CD continuously monitors the GitHub repository and synchronizes the Kubernetes cluster with the desired state stored in Git.

<p align="center">
  <img src="docs/diagrams/gitops-workflow.png" width="900">
</p>

## ☸️ Kubernetes Deployment

This diagram illustrates how Kubernetes components work together to deploy and expose the Flask application inside the Minikube cluster.

<p align="center">
  <img src="docs/diagrams/kubernetes-deployment.png" width="900">
</p>

---

## 📂 Project Structure

flask-app-devops-project/
│
├── .github/
│   └── workflows/
│       └── docker.yml
│
├── docs/
│   ├── diagrams/
│   └── screenshots/
│
├── flask-time-chart/
│   ├── templates/
│   ├── Chart.yaml
│   └── values.yaml
│
├── terraform/
│   ├── backend.tf
│   ├── provider.tf
│   ├── main.tf
│   └── variables.tf
│
├── app.py
├── Dockerfile
├── README.md
└── .gitignore
---

## 📋 Prerequisites

Before running this project, ensure you have installed:

- Git
- Docker Desktop
- Minikube
- kubectl
- Helm
- Terraform
- A GitHub account
---

## 🚀 Getting Started

### Clone the repository

```bash
git clone https://github.com/Ruth-orji/flask-app-devops-project.git
cd flask-app-devops-project
```

### Build Docker image

```bash
docker build -t flask-time-app .
```

### Start Minikube

```bash
minikube start
```

### Deploy using Helm

```bash
helm install flask-time flask-time-chart
```
### Verify the deployment

```bash
kubectl get pods
kubectl get services
```

### Access the application

```bash
minikube service flask-time-service
```

### Deploy with Argo CD

Create an application in the Argo CD UI and point it to this repository.

---

## 📸 Project Screenshots

### Flask Application

<p align="center">
  <img src="docs/screenshots/flask-app.png" width="900">
</p>

### Argo CD Dashboard

<p align="center">
  <img src="docs/screenshots/argocd-dashboard.png" width="900">
</p>

### GitHub Actions

<p align="center">
  <img src="docs/screenshots/github-actions.png" width="900">
</p>

### Docker Hub Repository

<p align="center">
  <img src="docs/screenshots/dockerhub.png" width="900">
</p>

---

## 💡 Key Skills Demonstrated

- Docker containerization
- Kubernetes deployments
- Helm package management
- Terraform Infrastructure as Code
- GitHub Actions CI
- Argo CD GitOps
- Docker Hub image publishing
- Git version control
---

## 🚀 Future Improvements

- Deploy to Amazon EKS
- Provision AWS infrastructure with Terraform
- Store Docker images in Amazon ECR
- Implement monitoring with Prometheus and Grafana
- Add centralized logging with the ELK Stack
- Configure HTTPS using an Ingress Controller

---

## 👩‍💻 Author

**Ruth Orji**  
Cloud & DevOps Engineer

- **GitHub:** [Ruth-orji](https://github.com/Ruth-orji)
- **LinkedIn:** [Ruth Orji](https://www.linkedin.com/in/ruth-orji-742941276)

---

## 📄 License

This project is intended for educational and portfolio purposes.