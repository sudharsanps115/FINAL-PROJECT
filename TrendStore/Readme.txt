#Project Overview – End-to-End DevOps CI/CD on AWS

This project demonstrates a complete DevOps workflow for deploying a React application using Docker, Jenkins, Kubernetes (EKS), Terraform, and Monitoring
with Prometheus & Grafana.

#Infrastructure Setup (Terraform)

Terraform was used to provision AWS infrastructure.

Resources include:

VPC and networking
EC2 instance with Jenkins
IAM roles and permissions
jenkins-server deployment
Infrastructure provisioning is automated using Infrastructure as Code (IaC).

Version Control (GitHub)

Source code is stored in GitHub.
.gitignore is  used to avoid pushing unnecessary files.
GitHub webhooks trigger Jenkins automatically on every code push.
Containerization (Docker & DockerHub)
The React application is containerized using Docker with an Nginx base image.
Docker images are built and pushed to DockerHub.
This ensures consistent and portable application deployments.

#CI/CD Pipeline (Jenkins)

Jenkins is installed on an EC2 instance.
A Declarative Jenkins Pipeline performs:
Source code checkout from GitHub
Docker image build
Push image to DockerHub
Deploy application to Kubernetes using kubectl
GitHub webhooks enable automatic builds on every commit.

#Container Orchestration (Kubernetes – EKS)

AWS EKS is used to run the application.
Kubernetes manifests include:
Deployment for managing pods
Service for exposing the application
Application runs on port 3000 and is scalable and fault-tolerant.

#Monitoring & Observability (Prometheus & Grafana)

Prometheus collects metrics from:

Node Exporter
kube-state-metrics
Metrics Server

Grafana visualizes:

Cluster CPU & memory usage
Node and pod health
Application performance

Monitoring ensures high availability and observability of the system.
