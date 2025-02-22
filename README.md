# 🚖 Uber Clone Project

This is a containerized Uber Clone application deployed on **Amazon EKS** using **Terraform** for infrastructure management 
and **Kubernetes manifests** for application deployment. It features a **microservices architecture** with separate frontend and backend services.
All managed using Docker containers and ECR (Elastic Container Registry).

## 🎯 Project Overview

This project showcases the deployment of a full-stack Uber Clone application using:
- **Docker** for containerization of frontend and backend services.
- **ECR (Elastic Container Registry)** for storing container images.
- **EKS (Elastic Kubernetes Service)** for managing Kubernetes clusters.
- **Terraform** for Infrastructure as Code (IaC).
- **Kubernetes Manifests** for deploying microservices architecture.

The goal is to **automate** the deployment and management process as much as possible, showcasing advanced DevOps practices for CI/CD, observability, and scalability.

---

## 🏛️ Architecture

- **Frontend**: ReactJS (with Vite) served by Nginx.
- **Backend**: Node.js with Express and MongoDB.
- **Database**: MongoDB hosted as a container.
- **Infrastructure**:
  - **VPC** with Public Subnets.
  - **EKS Cluster** with Node Groups.
  - **ECR** for container image storage.
  - **Load Balancer** for frontend service exposure.

---

## 🛠️ Tech Stack

- **Frontend**: ReactJS, Vite, Nginx
- **Backend**: Node.js, Express, MongoDB, Socket.io
- **Containerization**: Docker, Docker Compose
- **Infrastructure as Code**: Terraform
- **Container Orchestration**: Kubernetes (EKS)
- **CI/CD Pipeline**: GitHub Actions, Jenkins (Future Implementation)
- **Monitoring and Observability**: Prometheus, Grafana (Future Implementation)

---

## 🚀 Features

- 🚗 **Ride Booking System**: Similar to Uber's core functionality.
- 🔑 **User Authentication**: Secure login and signup.
- 📊 **Real-time Updates**: Using Socket.io for live updates.
- 🔄 **CI/CD Automation**: For building, testing, and deploying code.
- 📡 **Scalable Architecture**: Deployed on AWS EKS.
- 📈 **Observability**: Planned integration with Prometheus and Grafana.

---

## 🌐 Infrastructure Setup

### Using **Terraform**:
- **ECR**: To store Docker images.
- **VPC**: Custom VPC with public subnets.
- **EKS Cluster**: Managed Kubernetes cluster with node groups.
- **IAM Roles**: For EKS cluster and nodes with appropriate permissions.

**Terraform Modules Used**:
- **VPC Module**: `modules/vpc`
- **EKS Module**: `modules/eks`
- **IAM Module**: `modules/iam`

---

## 📦 Application Deployment

### Using **Kubernetes Manifests**:
- **Namespace**: `namespace.yaml` - for logical separation.
- **Deployments**:
  - `backend-deployment.yaml`
  - `frontend-deployment.yaml`
  - `mongo-deployment.yaml`
- **Services**:
  - **Backend Service**: `backend-service.yaml`
  - **Frontend Service**: `frontend-service.yaml` (LoadBalancer)
  - **MongoDB Service**: `mongo-service.yaml`

---

## 🔄 CI/CD Pipeline

### Planned Features:
- **Automated Builds**: Using GitHub Actions or Jenkins.
- **Continuous Deployment**: To EKS using `kubectl`.
- **Docker Image Management**: Automated push to ECR.
- **Infrastructure Updates**: Using `terraform apply`.

---

## 📊 Observability

### Planned Integrations:
- **Prometheus** for metrics collection.
- **Grafana** for monitoring and dashboards.
- **EFK Stack** for centralized logging.

---

## ✅ Prerequisites

- **AWS Account** with Administrator Access
- **Terraform** (v1.0 or higher)
- **Kubectl** (compatible with EKS version)
- **AWS CLI** configured with access keys
- **Docker** and **Docker Compose** installed
- **Git** for version control

---

## ⚙️ Installation and Setup

### 1. **Clone the Repository:**

git clone https://github.com/Shahab0990/Uber-Clone.git
cd Uber-Clone

Setup ECR using Terraform:
cd Terraform
terraform init
terraform apply

 Build and Push Docker Images:
 docker build -t <ecr_repo_url>:backend ./Backend
docker build -t <ecr_repo_url>:frontend ./Frontend

# Login to ECR
aws ecr get-login-password --region <region> | docker login --username AWS --password-stdin <ecr_repo_url>

# Push Images
docker push <ecr_repo_url>:backend
docker push <ecr_repo_url>:frontend

Deploy EKS Cluster using Terraform:
terraform apply

 Deploy Application to EKS:
 cd k8s-manifests
kubectl apply -f namespace.yaml
kubectl apply -f mongo-deployment.yaml
kubectl apply -f backend-deployment.yaml
kubectl apply -f frontend-deployment.yaml

🚀 Usage
kubectl get svc -n uber-clone

🤝 Contributing
Contributions, issues, and feature requests are welcome! Feel free to check out the issues page.
