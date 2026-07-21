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

This repository demonstrates a complete DevOps workflow from application development to automated Kubernetes deployment.

## 🏗️ Solution Architecture

```mermaid
flowchart LR

Developer["👩‍💻 Developer"]

GitHub["GitHub Repository"]

Actions["GitHub Actions"]

DockerHub["Docker Hub"]

Terraform["Terraform"]

Minikube["Minikube Cluster"]

Helm["Helm Chart"]

Argo["Argo CD"]

Flask["Flask Application"]

Developer -->|git push| GitHub

GitHub --> Actions

Actions -->|Build & Push Image| DockerHub

GitHub --> Argo

Terraform --> Minikube

DockerHub --> Minikube

Helm --> Minikube

Argo --> Helm

Minikube --> Flask
```
---

# 🔄 CI/CD Pipeline

This project uses **GitHub Actions** to automatically build and publish a Docker image whenever code is pushed to the `main` branch.

```mermaid
flowchart LR

Code["Developer Pushes Code"]

GitHub["GitHub Repository"]

Workflow["GitHub Actions Workflow"]

Build["Build Docker Image"]

DockerHub["Push Image to Docker Hub"]

Success["Deployment Artifact Ready"]

Code --> GitHub

GitHub --> Workflow

Workflow --> Build

Build --> DockerHub

DockerHub --> Success
```

---

# ☸️ GitOps Workflow

Argo CD continuously monitors the GitHub repository and synchronizes Kubernetes with the desired state stored in Git.

```mermaid
flowchart LR

GitHub["GitHub Repository"]

Argo["Argo CD"]

Helm["Helm Chart"]

Kubernetes["Minikube Cluster"]

Application["Flask Application"]

GitHub --> Argo

Argo --> Helm

Helm --> Kubernetes

Kubernetes --> Application
```

---

# 📂 Project Structure

```text
flask-app-devops-project/
│
├── .github/
│   └── workflows/
│       └── docker.yml
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
```

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

![Solution Architecture](docs/diagrams/architecture.png)

## 🔄 CI/CD Pipeline

![CI/CD Pipeline](docs/diagrams/cicd-pipeline.png)

## ☸️ GitOps Workflow

![GitOps Workflow](docs/diagrams/gitops-workflow.png)

## 🚀 Kubernetes Deployment

![Kubernetes Deployment](docs/diagrams/kubernetes-deployment.png)

<h2>🏗️ Solution Architecture</h2>

<p align="center">
  <img src="docs/diagrams/architecture.png" width="900">
</p>

<h2>🔄 CI/CD Pipeline</h2>

<p align="center">
  <img src="docs/diagrams/cicd-pipeline.png" width="900">
</p>

<h2>🔄 Gitops Workflow</h2>

<p align="center">
  <img src="docs/diagrams/gitops-workflow.png" width="900">
</p>

<h2>🔄 Kubernetes Deployment</h2>

<p align="center">
  <img src="docs/diagrams/kubernetes-deployment.png" width="900">
</p>

## 📄 License

This project is intended for educational and portfolio purposes.
