# EC2-Automation

## Overview
This project automates the deployment of an AWS EC2 instance, sets up security groups, configures a Cloudflare subdomain, installs Docker using Ansible, and deploys a portfolio website inside a Docker container. The entire deployment process is automated using Terraform, Ansible, and Bash scripting.

## Features
- Automates AWS EC2 instance creation using Terraform.
- Configures security groups for SSH, HTTP, and HTTPS access.
- Updates Cloudflare DNS to point to the instance.
- Uses Ansible to install Docker on the instance.
- Deploys a Dockerized portfolio website.
- Provides automated deployment using a Bash script.

## Prerequisites
- AWS account with access to create EC2 instances.
- Cloudflare account with API token.
- Terraform installed on your local machine.
- Ansible installed on your local machine.
- SSH key for authentication.

## Installation & Deployment
### 1. Clone the repository:
```bash
git clone https://github.com/saurabh-mate/Terraform-Automation.git
cd Terraform-Automation
```

### 2. Configure Terraform variables:
Update the `variables.tf` file with your Cloudflare API token and Zone ID.

### 3. Initialize Terraform:
```bash
terraform init
```

### 4. Apply Terraform configuration:
```bash
terraform apply -auto-approve
```

### 5. Deploy using the script:
```bash
bash deploy.sh
```

## Outputs
- Public IP of the EC2 instance.
- Cloudflare subdomain URL (`http://saurabh.purvesh.cloud`).
- Confirmation message upon successful deployment.

## Accessing the Portfolio Website
Once deployed, you can access the portfolio website at:
```
http://saurabh.purvesh.cloud
```

## Cleanup
To destroy the infrastructure, run:
```bash
terraform destroy -auto-approve
```

## License
This project is licensed under the MIT License.

## Author
[Saurabh Mate](https://github.com/saurabh-mate)

