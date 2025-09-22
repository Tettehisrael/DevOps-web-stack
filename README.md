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

```
## 🏗️ Project Setup

### Clone the repository
```
git clone https://github.com/your-username/your-repo.git
cd your-repo
```

### Initialize Terraform
```cd terraform
terraform init
terraform apply
```
This provisions:
- VPC, subnets, security groups
- EC2 instance
- Networking for Nginx reverse proxy
- Configure Ansible

### Update your inventory file with your EC2 details.

### Run:
```ansible-playbook -i inventory playbook.yml```

This installs & configures:
- Node.js via NVM
- MongoDB
- PM2 process manager
- Nginx reverse proxy

## ✅ Verification  

After deploying the stack, confirm everything is working by following these checks:  

 1. Check Nginx Reverse Proxy  
```bash
systemctl status nginx
curl -I http://localhost
curl -I http://<EC2_PUBLIC_IP>
```
✅ You should see an HTTP/1.1 200 OK response or the Node.js app page in the browser.

2. Check Node.js App
```curl http://localhost:3000
pm2 status
```
✅ The app should return a response and appear as online in the pm2 process table.

3. Check MongoDB
```systemctl status mongod
mongosh --eval "db.stats()"
```
✅ Service should be active (running) and output DB stats in JSON.

4. Verify Logs
```tail -f /var/log/nginx/access.log /var/log/nginx/error.log
pm2 logs my-app
```
✅ Requests should appear in Nginx logs, and app logs update in real time.

5. Verify Idempotency
```ansible-playbook -i inventory playbook.yml
```
✅ Output should show ok=... changed=0 (no unnecessary re-runs).
