# Infrastructure Automation with Terraform and Ansible
This project automates the deployment of a scalable web server stack on AWS EC2, featuring Nginx as a reverse proxy, a Node.js application (a logistics-focused shipment status API), and MongoDB for data persistence. The infrastructure is provisioned using Terraform with modular design, servers are configured with Ansible, and deployments are automated via a GitHub Actions CI/CD pipeline.

## Project Overview
The goal is to demonstrate modern DevOps practices by automating the deployment of a web application. The stack includes:

- Nginx: Serves as a reverse proxy, handling HTTP traffic and forwarding requests to the Node.js app.
- Node.js App: A simple Express.js API for managing shipment statuses (e.g., GET /shipments/:id to retrieve shipment details).
- MongoDB: Provides persistent storage for shipment data.
- AWS EC2: Hosts the application within a custom VPC, secured with tailored security groups.
- Terraform: Provisions AWS infrastructure (VPC, EC2, security groups) using reusable modules.
- Ansible: Configures the EC2 instance by installing and setting up Nginx, Node.js, and MongoDB.
- GitHub Actions: Automates deployment through a CI/CD pipeline.

This project emphasizes infrastructure-as-code (IaC), modularity, and automation, making it repeatable, scalable, and cost-efficient (AWS free tier compatible).


## Project Structure
```infra-automation/
├── ansible/                # Ansible playbooks and roles for server configuration
├── app/                    # Node.js application (shipment status API)
├── terraform/              # Terraform configurations and modules for AWS infrastructure
└── .github/workflows/      # GitHub Actions workflows for CI/CD

