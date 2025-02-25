🚖 Uber Clone Project
This is a containerized Uber Clone application deployed on Amazon EKS using Terraform for infrastructure management and Kubernetes manifests for application deployment. It features a microservices architecture with separate frontend and backend services, all managed using Docker containers and ECR (Elastic Container Registry).

🎯 Project Overview
This project showcases the deployment of a full-stack Uber Clone application using:

Docker for containerization of frontend and backend services.
ECR (Elastic Container Registry) for storing container images.
EKS (Elastic Kubernetes Service) for managing Kubernetes clusters.
Terraform for Infrastructure as Code (IaC).
Kubernetes Manifests for deploying microservices architecture.
Jenkins CI/CD Pipeline for automated builds, testing, security scans, and deployments.
SonarQube for code quality analysis.
OWASP Dependency Check and Trivy for security scans.
The goal is to automate the deployment and management process as much as possible, showcasing advanced DevOps practices for CI/CD, security, observability, and scalability.

🏛️ Architecture

Frontend: ReactJS (with Vite) served by Nginx.
Backend: Node.js with Express, MongoDB, and Socket.io.
Database: MongoDB hosted as a container.
Infrastructure:
VPC with Public and Private Subnets.
EKS Cluster with Node Groups.
ECR for container image storage.
Load Balancer for frontend service exposure.
Jenkins for CI/CD automation.
SonarQube for code quality analysis.


🛠️ Tech Stack
Frontend: ReactJS, Vite, Nginx
Backend: Node.js, Express, MongoDB, Socket.io
Containerization: Docker, Docker Compose
Infrastructure as Code: Terraform
Container Orchestration: Kubernetes (EKS)
CI/CD Pipeline: Jenkins
Code Quality: SonarQube
Security Scans: OWASP Dependency Check, Trivy
Monitoring and Observability: Prometheus, Grafana (Planned)

🚀 Features
🚗 Ride Booking System: Similar to Uber's core functionality.
🔑 User Authentication: Secure login and signup.
📊 Real-time Updates: Using Socket.io for live updates.
🔄 CI/CD Automation: For building, testing, and deploying code.
🔍 Code Quality and Security Checks: Using SonarQube, OWASP, and Trivy.
📡 Scalable Architecture: Deployed on AWS EKS.
📈 Observability: Planned integration with Prometheus and Grafana.


🌐 Infrastructure Setup
Using Terraform:
ECR: To store Docker images.
VPC: Custom VPC with public and private subnets.
EKS Cluster: Managed Kubernetes cluster with node groups.
IAM Roles: For EKS cluster and nodes with appropriate permissions.

Terraform Modules Used:
VPC Module: modules/vpc
EKS Module: modules/eks
IAM Module: modules/iam

📦 Application Deployment
Using Kubernetes Manifests:
Namespace: namespace.yaml - for logical separation.
Deployments:
backend-deployment.yaml
frontend-deployment.yaml
mongo-deployment.yaml
Services:
Backend Service: backend-service.yaml
Frontend Service: frontend-service.yaml (LoadBalancer)
MongoDB Service: mongo-service.yaml

🔄 CI/CD Pipeline
Using Jenkins:
Pipeline-as-Code: Using Jenkinsfiles for both frontend and backend.
SonarQube Analysis: Integrated for code quality and security analysis.
OWASP Dependency Check and Trivy Scans for security vulnerability checks.
Docker Image Build and Push to ECR for both frontend and backend.
Automated Deployment to EKS using updated Kubernetes manifests.

📁 Jenkins Pipeline Structure:
Backend Jenkinsfile:
SonarQube Analysis for code quality.
OWASP Dependency Check for security vulnerabilities.
Trivy File and Image Scans for container security.
Docker Image Build for backend service.
ECR Image Pushing for versioned images.
Update Deployment File for automatic deployment on EKS.
Frontend Jenkinsfile:
Similar stages as backend but tailored for frontend service.

📂 Jenkinsfile Locations:
Jenkinsfile-backend: In ./backend/Jenkinsfile
Jenkinsfile-frontend: In ./frontend/Jenkinsfile

🔍 Code Quality and Security
Using SonarQube:
Integrated with Jenkins pipeline.
Analyzes:
Code Quality
Security Vulnerabilities
Code Smells
Test Coverage
Using OWASP Dependency Check:
Scans for known vulnerabilities in dependencies.
Generates reports in Jenkins.
Using Trivy:
File System Scans for vulnerabilities in source code.
Docker Image Scans for container security before pushing to ECR.

📊 Observability
Planned Integrations:
Prometheus for metrics collection.
Grafana for monitoring and dashboards.
EFK Stack for centralized logging.

✅ Prerequisites
AWS Account with Administrator Access
Terraform (v1.0 or higher)
Kubectl (compatible with EKS version)
AWS CLI configured with access keys
Docker and Docker Compose installed
Jenkins with required plugins:
SonarQube Scanner
OWASP Dependency Check
Trivy
AWS Pipeline
AWS Credentials
SonarQube Server for code analysis
Git for version control

⚙️ Installation and Setup
1. Clone the Repository:

git clone https://github.com/Shahab0990/Terraform-k8s.git
cd Terraform-k8s

2. Setup ECR using Terraform:

cd Terraform
terraform init
terraform apply
3. Build and Push Docker Images:

# Build Backend Image
cd backend
docker build -t <ecr_repo_url>-backend .

# Build Frontend Image
cd ../frontend
docker build -t <ecr_repo_url>-frontend .

# Login to ECR
aws ecr get-login-password --region <region> | docker login --username AWS --password-stdin <ecr_repo_url>

# Push Images
docker push <ecr_repo_url>-backend
docker push <ecr_repo_url>-frontend
4. Deploy EKS Cluster using Terraform:
bash
Copy
Edit
terraform apply

4. Deploy Application to EKS:


cd k8s-manifests
kubectl apply -f namespace.yaml
kubectl apply -f mongo-deployment.yaml
kubectl apply -f backend-deployment.yaml
kubectl apply -f frontend-deployment.yaml

🚀 Usage
bash
Copy
Edit
kubectl get svc -n uber-clone

🤝 Contributing
Contributions, issues, and feature requests are welcome! Feel free to check out the issues page.

📄 License
This project is licensed under the MIT License.













Search


