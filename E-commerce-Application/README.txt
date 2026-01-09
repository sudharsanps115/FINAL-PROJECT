PROJECT-3 

E-commerce Application


Project Overview:

This project demonstrates a real-world DevOps CI/CD pipeline with cloud deployment and monitoring using AWS EC2, Jenkins, Docker,
 Prometheus, and Grafana.

The objective of the project is to automate application build, deployment, and monitoring while following production-level
 security and infrastructure best practices.

 Architecture Overview:

The system is designed using two separate AWS EC2 instances to ensure proper separation of concerns:

1️] Application EC2 (Production Server)

Hosts the E-commerce web application
Runs the application inside Docker containers
Exposes the application publicly on HTTP (port 80)
Runs Node Exporter for system-level monitoring

2️] Monitoring EC2 (CI/CD + Observability Server)

Hosts Jenkins for CI/CD automation
Hosts Prometheus for metrics collection
Hosts Grafana for visualization and dashboards
Runs Node Exporter to monitor its own system

 CI/CD Workflow:

Source code is managed in GitHub

A Jenkins pipeline is triggered on code changes

Jenkins:

Builds the Docker image
Pushes the image to Docker Hub
Deploys the application to the Application EC2
The deployed application becomes accessible via the Application EC2 public IP
This ensures a fully automated build and deployment process with no manual intervention.

 Monitoring & Observability:

Monitoring is implemented using open-source tools:

Prometheus

Scrapes system metrics from both EC2 instances via Node Exporter
Collects CPU, memory, disk, and network metrics

Grafana

Visualizes Prometheus metrics using interactive dashboards
Provides real-time visibility into infrastructure health

Node Exporter

Installed on both Application and Monitoring EC2 instances
Exposes system-level metrics on port 9100
This setup enables proactive monitoring and quick issue detection.

 Security Configuration

Port 80: Open to the public for application access
Port 22 (SSH): Restricted to the developer’s IP only
Port 8080 (Jenkins): Restricted to the developer’s IP
Port 9100 (Node Exporter): Allowed only between EC2 instances
Monitoring services are not publicly exposed

This follows production-grade security best practices.

 Tools & Technologies Used:

AWS EC2 – Cloud infrastructure
Jenkins – CI/CD automation
Docker & Docker Compose – Containerization and deployment
GitHub – Source control
Docker Hub – Image registry
Prometheus – Metrics collection
Grafana – Monitoring dashboards
Node Exporter – System metrics exporter
Linux (Ubuntu 22.04) – Operating system

 Key Highlights

Fully automated CI/CD pipeline
Secure cloud deployment on AWS
Separation of application and monitoring workloads
Real-time infrastructure monitoring
Uses only open-source tools
Production-ready design and configuration
