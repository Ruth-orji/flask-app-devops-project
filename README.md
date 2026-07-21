# Flask DevOps Project 🚀

A complete end-to-end DevOps project demonstrating modern CI/CD and GitOps practices using a simple Flask application deployed to Kubernetes.

## 📖 Project Overview

This project showcases the complete software delivery lifecycle from writing application code to automated deployment on Kubernetes.

The application is containerized using Docker, automatically built and pushed to Docker Hub with GitHub Actions, deployed to a Kubernetes cluster using Helm, and continuously managed by Argo CD following GitOps principles.

---

## 🏗️ Architecture

```
Developer
    │
    ▼
GitHub Repository
    │
    ▼
GitHub Actions (CI)
    │
    ▼
Docker Build
    │
    ▼
Docker Hub
    │
    ▼
Argo CD (GitOps)
    │
    ▼
Helm Chart
    │
    ▼
Kubernetes (Minikube)
    │
    ▼
Flask Application
```

---

## 🛠️ Technologies Used

* Python
* Flask
* Docker
* Docker Hub
* Git
* GitHub
* GitHub Actions
* Kubernetes
* Minikube
* Helm
* Argo CD
* Terraform

---

## 📂 Project Structure

```
.
├── .github/
│   └── workflows/
│       └── docker.yml
├── flask-time-chart/
│   ├── templates/
│   ├── Chart.yaml
│   └── values.yaml
├── terraform/
├── app.py
├── Dockerfile
├── .dockerignore
└── README.md
```

---

## ⚙️ CI/CD Pipeline

1. Developer pushes code to GitHub.
2. GitHub Actions automatically builds the Docker image.
3. The image is pushed to Docker Hub.
4. Argo CD monitors the Git repository.
5. Kubernetes is synchronized with the desired application state.
6. The Flask application is deployed automatically.

---

## 🚀 Running Locally

Clone the repository:

```bash
git clone https://github.com/Ruth-orji/flask-app-devops-project.git
cd flask-app-devops-project
```

Create a virtual environment:

```bash
python -m venv venv
```

Activate the environment:

### Windows

```powershell
venv\Scripts\activate
```

Install dependencies:

```bash
pip install flask
```

Run the application:

```bash
python app.py
```

---

## 🐳 Docker

Build the image:

```bash
docker build -t flask-time-app .
```

Run the container:

```bash
docker run -d -p 8080:8080 flask-time-app
```

---

## ☸️ Kubernetes Deployment

Deploy using Helm:

```bash
helm install flask-time flask-time-chart
```

Verify deployment:

```bash
kubectl get all
```

---

## 🔄 GitOps with Argo CD

Install Argo CD:

```bash
helm install argocd argo/argo-cd --namespace argocd --create-namespace
```

Port-forward the UI:

```bash
kubectl port-forward svc/argocd-server -n argocd 8081:443
```

Open:

```
https://localhost:8081
```

---

## 📸 Screenshots

Add screenshots of:

* Flask application running
* Docker container
* GitHub Actions workflow
* Docker Hub repository
* Kubernetes pods
* Helm deployment
* Argo CD dashboard (Healthy & Synced)

---

## 👩‍💻 Author

**Ruth Orji**

GitHub: https://github.com/Ruth-orji

---

## 📄 License

This project is intended for educational and portfolio purposes.
