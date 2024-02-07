# DevOps Challenges

## Task level

The tasks below have been ranked based on seniority level, these are just recommendations and can be different based on your own experience.

- Junior Engineer
- Mid Engineer
- Senior Engineer

- [DevOps Challenges](#devops-challenges)
  - [1. K8s deployment (Junior)](#1-k8s-deployment-junior)
  - [2. Linux Automation](#2-linux-automation)
  - [3. K8s enhancements (multiple choice)](#3-k8s-enhancements-multiple-choice)
  - [4. SSL Certificates](#4-ssl-certificates)
  - [5. Service roles in K8s](#5-service-roles-in-k8s)
  - [6. Three Tier Terraform Architecture](#6-three-tier-terraform-architecture)
  - [7. Ansible Basics](#7-ansible-basics)
  - [8. CI/CD Pipeline Exercise with GitHub Actions](#8-cicd-pipeline-exercise-with-github-actions)
  - [9. Docker Multi-Stage Build Exercise](#9-docker-multi-stage-build-exercise)
  - [10. Terraform modules exercise](#10-terraform-modules-exercise)
  - [11. Docker compose exercise (Advanced multi-container)](#11-docker-compose-exercise-advanced-multi-container)
  - [12. AWS Cloud Security](#12-aws-cloud-security)
  - [13. Azure Security Challenge](#13-azure-security-challenge)
  - [14. GCP Security Challenge](#14-gcp-security-challenge)
  - [15. AWS Serverless Challenge](#15-aws-serverless-challenge)
  - [16. DevOps Troubleshooting Challenge: The Broken CI/CD Pipeline](#16-devops-troubleshooting-challenge-the-broken-cicd-pipeline)
  - [17. AWS Lambda/Terraform Troubleshooting](#17-aws-lambdaterraform-troubleshooting)
  - [18. DevOps Troubleshooting Challenge with Docker Compose](#18-devops-troubleshooting-challenge-with-docker-compose)
  - [19. Linux Monitoring Automation](#19-linux-monitoring-automation)
  - [20. ArgoCD Deployment Challenge](#20-argocd-deployment-challenge)
  - [21. Terraform Kubernetes Cluster Deployment Challenge](#21-terraform-kubernetes-cluster-deployment-challenge)
  - [22. Istio with Kubernetes](#22-istio-with-kubernetes)
  - [23. OPA with Terraform (Security as Code)](#23-opa-with-terraform-security-as-code)
  - [24. Create Immutable AMIs with Packer](#24-create-immutable-amis-with-packer)
  - [25. Secrets Management with HashiCorp Vault](#25-secrets-management-with-hashicorp-vault)
  - [26. Infrastructure as Code Refactor](#26-infrastructure-as-code-refactor)
  - [27. Chaos Engineering](#27-chaos-engineering)
  - [28. Monitoring and Alerting](#28-monitoring-and-alerting)
  - [29. Traefik with ECS](#29-traefik-with-ecs)
  - [30. Network Automation with Ansible](#30-network-automation-with-ansible)
  - [31. K8s with Secrets Management Challenge](#31-k8s-with-secrets-management-challenge)
  - [32. Docker-Compose Challenge (2)](#32-docker-compose-challenge-2)
  - [33. Ansible Advanced (1)](#33-ansible-advanced-1)
  - [34. Helm Deployment Challenge](#34-helm-deployment-challenge)
  - [35. Advanced Helm Challenge](#35-advanced-helm-challenge)
  - [36. Bash Automation Challenge](#36-bash-automation-challenge)
  - [37. Development with Tiltfiles](#37-development-with-tiltfiles)
  - [38. Secure Access to Production Systems](#38-secure-access-to-production-systems)
  - [39. Automated Backup and Restore Process](#39-automated-backup-and-restore-process)
  - [40. Configuration Management with Puppet](#40-configuration-management-with-puppet)

## 1. K8s deployment (Junior)

```bash

Scenario:

A company wants to roll out a web service built on Kubernetes. To make this happen, complete a file stub located at /home/ubuntu/tech-vault-q1/special-definition.yml with the steps that do the following:

- Creates a new namespace named "CyberCo".
- Deploys a new "redis" image (sourced from Dockerhub) using the "buster" tag, under a deployment named "cache-db", within the "CyberCo" namespace.
- Scales the "cache-db" deployment to have 2 replicas.
- Opens port "6379" on the "cache-db" containers.

**Notes:**

- The finalized solution will be assessed in a fresh, isolated environment. Make sure all the configurations are stored in the /home/ubuntu/tech-vault directory.
- All tasks must be completed with a single `sudo execute` command, launched from the question directory. (Hint: use alias)
- You have sudo permissions if needed.

```

## 2. Linux Automation (Junior/Mid)

```bash

Scenario:

Complete the file stub located at `q2/runscript.sh` with one or more commands to achieve the following tasks:

- Extract the archive located at `/q2/backup.tar.gz`.
- Set permission "0664" for all the files that were just extracted.
- Set permission "0775" for all the directories that were just extracted.
- Change the owner to "anonymous" and the group to "no-team" for all the extracted files and directories.
- Create a new archive with the adjusted files and directories, naming it `/tmp/fixed-archive.tar.gz`.

**Notes:**

- Your solution will be evaluated in a new, clean setup. Make sure all work is performed in the `/q2` directory.
- Execute all tasks with a single `sudo activate` command run from within the question directory. (Hint: use alias)
- You have sudo permissions, if needed.

```

## 3. K8s enhancements (Junior/Mid)

```bash

Scenario:

While working on Kubernetes cluster enhancements, you need to set up a recurring task that makes a call to a remote API. Which of the following commands is correct to perform this action?

Pick ONE option:

1. `kubectl run cronjob task --image=toolbox --schedule="*/1 * * * *" -- curl -s https://api.cyber-widget.com/refresh`
  
2. `kubecmd create periodic-task --image=toolbox --timing="/1 * * * *" -- curl -s https://api.cyber-widget.com/refresh`
  
3. `kubecmd run periodic task --image=toolbox --timing="*/1 * * * *" -- curl -s https://api.cyber-widget.com/refresh`
  
4. `kubectl create cronjob task --image=toolbox --schedule="*/1 * * * *" -- curl -s https://api.cyber-widget.com/refresh`

**Notes:**

- The correct answer will be evaluated on its ability to perform the task as described.

```

## 4. SSL Certificates Junior

```bash

Scenario:

In the directory `/home/ubuntu/tech-vault-q4/taskrunner.sh`, you have an SSL certificate named `security.crt` and a private key named `secrecy.key`. Complete the `taskrunner.sh` file with steps to accomplish the following:

- **Task 1**: Create a new User entry in Kubeconfig named `operator` using the `security.crt` and `secrecy.key` located in `/home/ubuntu/tech-vault-q4/`.
  
- **Task 2**: Create a new Context entry named `operator` in Kubeconfig for the newly created User `operator`.

**Notes**

- The completed solution will be evaluated in a fresh environment. Make sure all your changes are in the `taskrunner.sh` file located in `/home/ubuntu/tech-vault-q4/`. Manual changes will not be preserved.
  
- Run `sudo execute` from the question directory to test the solution. (Hint: use alias)
  
- Sudo privileges are available, if needed.

```

## 5. Service roles in K8s

```bash

Scenario:

You are required to complete the definition file located at `/home/ubuntu/tech-vault-q5/cluster-role-def.yml`. The file should have configurations to perform the following actions:

- **Step 1**: Create a new Service Account named `chief-admin`.

- **Step 2**: Create a new Cluster Role named `monitor`, which gives permissions on all possible API groups, resources, and verbs.

- **Step 3**: Create a Cluster Role Binding named `chiefadmin-monitor` that binds the newly created Service Account `chief-admin` with the Cluster Role `monitor`.

### Notes

- The completed solution will be verified in a fresh, untouched environment. Ensure all your changes are confined to the `cluster-role-def.yml` file in `/home/ubuntu/tech-vault-q5`.

- Run `sudo validate` from the question directory to apply your changes and solve the task.

- You have sudo access, if necessary.

```

Give me some Terraform questions as well.

## 6. Three Tier Terraform Architecture

```bash

## Terraform Exercise 1: Create an AWS S3 Bucket

### Objective

Your task is to write a Terraform script that does the following:

- **Step 1**: Create an AWS S3 bucket named `tf-test-bucket-yourname`.

- **Step 2**: Enable versioning on the S3 bucket.

- **Step 3**: Create a folder within that S3 bucket and name it `uploads`.

### Notes

- Make sure you save your Terraform script as `s3_bucket.tf` in the directory `/home/ubuntu/2023-terraform-s3-creation`.

- Run `terraform apply` to ensure your Terraform script executes without errors.

- You have AWS credentials set up in your environment.

---

## Terraform Exercise 2: Set up a VPC

### Objective

Write a Terraform script to set up a Virtual Private Cloud (VPC) in AWS with the following:

- **Step 1**: Create a VPC with CIDR block `10.0.0.0/16`.

- **Step 2**: Create a subnet in that VPC with CIDR block `10.0.1.0/24`.

- **Step 3**: Attach an internet gateway to the VPC.

### Notes

- Save your Terraform script in a file named `aws_vpc.tf` in the directory `/home/ubuntu/2023-terraform-vpc-setup`.

- Make sure you run `terraform init` and `terraform apply` to validate that the script works.

- AWS credentials are assumed to be configured.

---

## Terraform Exercise 3: Managing EC2 Instances

### Objective

Your objective is to create a Terraform script that automates the following:

- **Step 1**: Launch an EC2 instance with type `t2.micro`.

- **Step 2**: Make sure to use an Amazon Linux 2 AMI.

- **Step 3**: Tag the instance with "Environment: Dev".

### Notes

- Your Terraform script should be saved as `ec2_instance.tf` in the directory `/home/ubuntu/terraform-tech-vault`.

- Ensure to run `terraform init` and `terraform apply` to verify your script.

- AWS credentials should be available in your environment.


```

## 7. Ansible Basics

```bash

## Ansible Exercise 1: Configure a Web Server

### Objective

Your task is to write an Ansible playbook that automates the following tasks on a remote Ubuntu server:

- **Step 1**: Update the package manager cache.
  
- **Step 2**: Install the Apache web server package (`apache2`).

- **Step 3**: Enable and start the Apache service.

- **Step 4**: Deploy a simple `index.html` file to the document root `/var/www/html/`. The HTML should display "Hello, Ansible!"

### Requirements

- The playbook should be idempotent, meaning it can be run multiple times without changing the outcome.

- The target hosts should be defined in your Ansible inventory.

### Notes

- Save your Ansible playbook in a file named `web_server_setup.yml` in the directory `/home/ubuntu/tech-vault-ansible`.

- Run `ansible-playbook web_server_setup.yml` to make sure your playbook executes without errors.

- It's assumed that you've already configured SSH keys for authentication to the target server.

---
```

```bash

Question Architecture
                        +------------------------+
                        |      Control Node      |
                        |    (Your Workstation)  |
                        +-----------+------------+
                                    |
                                    | SSH & Ansible Commands
                                    |
                        +-----------v------------+
                        |     Target Node(s)     |
                        |  (Remote Ubuntu Server)|
                        +------------------------+
                            |       |         |
                            |       |         |
                            v       v         v
                Update Package Cache  Install Apache
                                          |
                                          v
                              Enable and Start Apache Service
                                          |
                                          v
                              Deploy index.html to /var/www/html


```

## 8. CI/CD Pipeline Exercise with GitHub Actions

```bash

## CI/CD Pipeline Exercise with GitHub Actions

### Context
You are responsible for the CI/CD pipeline of a Python web application. The application is built with Flask and the source code is stored in a GitHub repository.

### Objective
Create a GitHub Actions workflow that accomplishes the following:

1. Trigger the workflow on every push to the `main` branch and on pull requests targeting the `main` branch.
2. Use a Python 3.x environment.
3. Install the required Python packages defined in a `requirements.txt` file.
4. Run unit tests located in a `tests` folder.
5. If the unit tests are successful and the workflow was triggered by a push to `main`, deploy the application to a cloud server of your choice (AWS, Azure, etc.).

### Constraints
- For the sake of the exercise, you can use a single YAML configuration file for the GitHub Actions workflow.
- Assume that you have the necessary credentials to deploy to your chosen cloud service.

### Deliverables
- The GitHub Actions YAML file.
- Brief documentation explaining your workflow steps and any environment variables or secrets you used.


```

## 9. Docker Multi-Stage Build Exercise

```bash

### Context
You're a DevOps engineer working on a Node.js application. Your company is keen on optimising Docker images for production use.

### Objective
Create a Dockerfile that accomplishes the following:

1. Utilizes multi-stage builds for development and production.
2. In the first stage, named `builder`, use a Node.js image to install all dependencies and build the application. Assume that the build command is `npm run build`.
3. In the second stage, named `production`, use a smaller base image like `node:alpine` to set up the production environment. Copy only the essential files and folders from the `builder` stage.
4. Ensure that the production stage runs as a non-root user for added security.
5. Expose port `3000` for the application.
6. Make sure that the application starts with the command `npm start`.

### Constraints
- Your Dockerfile should be optimized for size and security.
- You can assume that a `.dockerignore` file is already set up to exclude unnecessary files.

### Bonus
- Include health checks in your Dockerfile.
- Use BuildKit features for added optimization, if you're familiar with them.

### Deliverables
- The Dockerfile.
- A brief README explaining the steps taken, any arguments used, and why you chose a particular base image or strategy.


```

## 10. Terraform modules exercise

```bash

## Terraform Module Exercise

### Context
You're a DevOps engineer tasked with managing cloud resources at your organisation. The team has decided to use Terraform for infrastructure as code, and you've been assigned to lead the initiative.

### Objective
Write a Terraform configuration that accomplishes the following:

1. Utilizes Terraform modules to create an AWS VPC.
2. Inside this VPC, deploy an EC2 instance and an RDS instance.
3. Use outputs to display essential information about the deployed resources, such as IPs and DNS names.
4. Implement remote state management using AWS S3 and state locking with DynamoDB.
5. Make sure to use variables to make your modules reusable.
6. Use locals to define any constant values or computations that are reused within the configuration.
  
### Constraints
- Your Terraform configuration should adhere to best practices like proper formatting, commenting, and resource naming conventions.
- Ensure your code is idempotent, meaning running it multiple times won't cause changes unless the actual configuration has changed.
  
### Bonus
- Implement a basic level of security by using AWS security groups to restrict traffic.
- Use Terraform workspaces to manage different environments (e.g., staging, production).

### Deliverables
- The Terraform configuration files.
- A README explaining:
  - How to use the modules.
  - Any prerequisites or dependencies.
  - How to initialize and apply the configuration.
  - Any assumptions or design choices made.

```

## 11. Docker compose exercise (Advanced multi-container)

```bash

### Context
You are a DevOps engineer working on a new web application that uses a Python Flask API backend and a Redis cache. You've been tasked with containerizing this application using Docker and defining the multi-container environment using Docker Compose.

### Objective
Create a `docker-compose.yml` file that:

1. Defines two services: one for the Flask API and another for the Redis cache.
2. Uses multi-stage builds for the Flask API to minimize the image size.
3. Utilizes environment variables to pass configurations to your services.
4. Mounts volumes to persist data and improve development experience.
5. Uses networks to isolate and secure communication between services.
6. Ensures the Flask API waits for the Redis service to be fully operational before starting.

### Constraints
- Make sure to use version `3` or above for the Docker Compose file format.
- Follow best practices for Dockerfile and Compose file design (e.g., avoid using the `root` user, use `.dockerignore`, etc.)
- Your services should restart automatically if they fail.

### Bonus
- Use overrides (`docker-compose.override.yml`) to manage settings that are specific to a development environment.
- Implement a healthcheck for your services.

### Deliverables
- The `docker-compose.yml` file.
- Any additional Dockerfiles or script files used.
- A README outlining:
  - How to bring up and down the environment.
  - How to scale services.
  - Any design choices or assumptions you made.

```

## 12. AWS Cloud Security

```bash

### Context
You are a DevOps engineer in a company that is migrating its on-premises applications to AWS. You've been tasked with ensuring the security posture of your cloud environment.

### Objective
Create an Infrastructure as Code (IaC) template using Terraform that accomplishes the following:

1. Sets up a VPC (Virtual Private Cloud) with private and public subnets.
2. Deploys an EC2 instance into the private subnet.
3. Sets up a Security Group that allows only necessary ports to be open.
4. Uses IAM Roles to grant the EC2 instance only the permissions it needs (Least Privilege).
5. Sets up CloudTrail to log API calls for your account.
6. Enable encryption for any storage services you use (EBS, S3, etc.)

### Constraints
- Use Terraform to create your infrastructure.
- Make use of modules to make your code re-usable.
- Incorporate best practices for AWS security (e.g., enable VPC flow logs, disable root user, etc.)

### Bonus
- Implement AWS Config to enforce security policies.
- Set up a CloudWatch Alarm that triggers if any unauthorized actions are performed.
- Use AWS Secrets Manager to store any sensitive information.

### Deliverables
- Terraform files (.tf) for your infrastructure.
- A README file that explains:
  - How to deploy your infrastructure.
  - Security best practices that you implemented.
  - Any assumptions or design choices you made.

```


## 13. Azure Security Challenge

```bash

### Context
You are a DevOps engineer at a software company that's planning to use Azure services for hosting a new web application. You have been given the responsibility to ensure the security of the application and its surrounding environment.

### Objective
Create an Azure ARM template or use Terraform to accomplish the following tasks:

1. Create a Virtual Network with a defined range of IP addresses.
2. Deploy a Virtual Machine into the Virtual Network, and make sure it is not directly accessible from the Internet.
3. Set up Network Security Groups (NSGs) to restrict inbound and outbound traffic to the Virtual Machine.
4. Implement Azure Key Vault to manage application secrets.
5. Enable Azure Monitor and Azure Security Center to collect performance and security metrics.
6. Set up Azure Active Directory and implement RBAC (Role-Based Access Control).

### Constraints

- You must use Infrastructure as Code (IaC) for all deployments.
- Wherever possible, apply the principle of Least Privilege.
- Enable Azure Multi-Factor Authentication for critical roles.

### Bonus

- Enable Azure DDoS Protection Standard for the Virtual Network.
- Implement Azure Policy to enforce organizational requirements.
- Create an Azure Logic App to send notifications if high-severity security incidents are detected.

### Deliverables
- All the code files used for setting up the environment.
- A README file that explains:
  - Steps to deploy the environment.
  - Best practices you've implemented.
  - Any assumptions or design choices you've made.



```

## 14. GCP Security Challenge

```bash

### Context
You're a DevOps engineer at a start-up that's rapidly scaling its infrastructure on GCP. Your boss has asked you to ensure that the GCP environment adheres to industry security standards.

### Objective
Use Terraform, Deployment Manager, or your preferred Infrastructure as Code (IaC) tool to accomplish the following tasks:

1. Create a custom VPC with a private subnet and a public subnet.
2. Deploy a Compute Engine instance within the private subnet and ensure it is not accessible from the public internet.
3. Implement firewall rules to control the inbound and outbound traffic within the VPC.
4. Set up Cloud Key Management Service (KMS) to encrypt sensitive application data.
5. Enable Stackdriver (Cloud Monitoring and Cloud Logging) for monitoring and logging activities.
6. Implement Identity and Access Management (IAM) with roles that follow the principle of Least Privilege.

### Constraints
- All resources must be deployed using IaC.
- Use Service Accounts to enable secure communication between different GCP services.
- Enable two-factor authentication for accounts with admin access.

### Bonus
- Implement a Cloud Function that triggers an alert based on a security condition (e.g., repeated login failures, firewall rule changes).
- Use Cloud Security Command Center to continuously monitor and secure your environment.
- Apply VPC Service Controls to limit the risk of data exfiltration.

### Deliverables
- All code files used for setting up the environment.
- A README file that explains:
  - The steps needed to deploy the environment.
  - Security best practices that were implemented.
  - Any assumptions or design choices you've made.


```

## 15. AWS Serverless Challenge

```bash

Create a Serverless REST API that allows users to manage a "to-do" list. Each to-do item should have a title and a status (completed or not).

## Requirements

1. DynamoDB Table: Create a DynamoDB table that will store the to-do items

2. AWS Lambda Functions: Implement Lambda functions for the CRUD operations:
    - Create a new item
    - Read an item by ID
    - Update an item by ID
    - Delete an item by ID
    - List all items

3. API Gateway: Create an API Gateway to expose these Lambda functions via HTTP endpoints.


4. IAM Roles: Make sure to assign appropriate IAM roles to your Lambda functions.

5. Terraform: Write the Terraform files to deploy these resources.

Files to Submit

- main.tf (or others/more) - This should contain the Terraform scripts to set up your infrastructure.
- handler.js (or any language you are comfortable with) - This should contain the code for your Lambda functions.


```

## 16. DevOps Troubleshooting Challenge: The Broken CI/CD Pipeline

[All files located here](./code/q16/README.md)

```bash

## Objective
You've just been onboarded onto a new project and found out the CI/CD pipeline hasn't been working for days. Your task is to identify and fix whatever is wrong with it. The pipeline is supposed to test the code, build a Docker image, and then push it to a container registry.

## Starting State
GitHub Repository: A GitHub repo containing a simple Python Flask app.
GitHub Actions: A .github/workflows/main.yml file that defines the pipeline.
DockerHub: Where the Docker image should be pushed.
Unit Tests: Some failing, some passing.

## Requirements

Identify Issues: List down the problems you discover in the existing pipeline.
Fix Unit Tests: Ensure all unit tests are passing.
GitHub Actions: Make sure the pipeline successfully tests the code and builds the Docker image.
DockerHub: Ensure the pipeline pushes the Docker image to DockerHub.
Documentation: Update the README.md to reflect any steps needed to fix the pipeline or any dependencies that must be installed.

project-root/
|-- .github/
|   |-- workflows/
|   |   |-- main.yml
|-- tests/
|   |-- test_app.py
|-- Dockerfile
|-- app.py
|-- requirements.txt
|-- README.md


```

<details>
<summary>Q16 Answers - ONLY LOOK once done (or for interviewers)</summary>

1. main.yml: Typo in the Docker build command: dockr instead of docker.

2. Dockerfile: Typo in the pip install command: -no-cache-dir instead of --no-cache-dir.

3. test_app.py: Incorrect comparison of bytes and string in the test assertion.

4. README.md: No mention of setting up GitHub Actions secrets for DockerHub.

</details>

## 17. AWS Lambda/Terraform Troubleshooting

[All files located here](./code/q17/README.md)

```bash

project-root/
|-- terraform/
|   |-- main.tf
|   |-- variables.tf
|   |-- outputs.tf
|-- lambda/
|   |-- handler.py
|   |-- requirements.txt
|-- README.md

Welcome to SuperCoolTech, a leading tech company that specialises in cloud-native solutions. You are part of the DevOps team and are responsible for managing and maintaining the infrastructure. Everything at SuperCoolTech is deployed as code, and you use Terraform extensively for provisioning AWS resources.

Late one evening, you receive a notification that there are issues with a newly deployed Lambda function. The Lambda function is throwing errors, and there are issues with the S3 bucket where it's supposed to store data. You suspect there might also be some IAM role issues, but you're not sure yet.

**Your task** is to identify and resolve the issues as quickly as possible. You have a brief window late at night to fix this, as that is the least traffic period, and you need to ensure minimal disruption.

## Your Mission

Fork the existing project repo and clone it locally.
Navigate through the Terraform files, Lambda function code, and other project components to identify what's wrong.
Fix the broken parts and ensure that the Terraform configuration is idempotent and applies without errors.
Test to confirm that the Lambda function is now working as expected and the S3 bucket is correctly configured.
Document the changes you've made and what each change accomplishes.

## Constraints

You cannot change the Terraform provider settings.
You are limited to the current AWS services and can't introduce a new service for this task.
All changes should be implemented via code (Infrastructure as Code).

## Success Criteria

Terraform code applies without any errors.
Lambda function executes successfully and performs its task.
S3 bucket correctly configured and accessible by the Lambda function.

```

<details>
<summary>Q17 Answers - ONLY LOOK once done (or for interviewers)</summary>

1. main.tf: s3_key for aws_lambda_function is wrong, as the zip file doesn't exist.

2. handler.py: Missing an import for json.

3. README.md: No mention of deploying the Lambda function code to the S3 bucket.

4. main.tf: IAM role permissions not sufficient for Lambda to write logs.

</details>

## 18. DevOps Troubleshooting Challenge with Docker Compose

```bash

**Context**

You have been provided with a Docker Compose YAML file that supposedly sets up a basic stack including an Nginx web server, a PostgreSQL database, and a Redis cache. The development team has reported that they are unable to get the services up and running, and they have passed the YAML file to you for investigation.

**Your Task**

Your task is to identify the issues that prevent the stack from running as expected. You are responsible for:

Identifying the errors in the Docker Compose YAML file.
Fixing the issues to ensure all services are up and running.
Document the changes you've made and explain why you made them.

Provided Docker Compose File
Here is the Docker Compose file you've been provided:

#######################################################
version: '3'
services:
  web:
    image: nginx
    ports:
      - "8080:80"
    depends_on:
      - databse
  database:
    image: postgres
    environment:
      POSTGRES_DB: mydatabase
      POSTGRES_USER: user
      POSTGRES_PASSWORD: password
  redis:
    image: redis
    ports:
      - "6379:6739"
#######################################################

**Evaluation Criteria**

- Successful deployment of services.
- Clear documentation explaining the errors and the steps you took to correct them.

```

## 19. Linux Monitoring Automation

```bash

**Context**

You're the new DevOps Engineer at XYZ Corp. The team has been having issues keeping track of system metrics for their Linux-based application servers. Your task is to write a script that will be run periodically to collect some system metrics and output them to a log file.

**Your Task**

Your Bash script should do the following:

- Capture the current CPU usage.
- Capture the current Memory usage.
- Capture the Disk usage for the / partition.
- Output all these metrics with timestamps to a log file located at /var/log/sys_metrics.log.

**Script Requirements**

- The script must be executable.
- All output must be appended to the log file; do not overwrite the previous logs.

Example Log File Output:

#######################################################

[Timestamp] CPU: x%, Memory: x%, Disk: x%
[Timestamp] CPU: x%, Memory: x%, Disk: x%

#######################################################

**Evaluation Criteria**

Accurate capture of system metrics.
Successful logging of metrics to the log file.
Proper error handling and script execution permissions.

**Hints**
You can use commands like top, free, df and utilities like awk to capture the system metrics.

Please note, the users must have sudo permissions to write to /var/log/sys_metrics.log or another approach would be to execute the script as a superuser.

```

## 20. ArgoCD Deployment Challenge

```bash

**Scenario**

You've just joined the DevOps team at Quantum Corp. The team is working on automating the deployment process for a new Kubernetes-based application. They've chosen ArgoCD as their GitOps tool. Your task is to set up an ArgoCD pipeline to deploy an example application from a Git repository to a Kubernetes cluster.

**Requirements**

- Fork the sample application repository provided by the company. (For the sake of this example, let's assume it's a simple Nginx application on a K8s deployment.)

- Install ArgoCD on a Kubernetes cluster. You can use Minikube or Rancher Desktop for local development.

- Create an ArgoCD Application that deploys the sample application from the forked repository.

- Make a change in the application and push it to the Git repository. Validate that ArgoCD picks up this change and deploys it automatically.

- Set up a Rollback strategy for the ArgoCD Application.

- Document the steps you've taken to complete the above tasks, and any scripts or YAML definitions you've created.

**Evaluation Criteria**

- Proper installation and configuration of ArgoCD.
- Successful GitOps-based deployment of the application.
- Ability to automatically update the application based on Git commits.
- Successful rollback of a deployment.
- Proper documentation and code quality.

```

## 21. Terraform Kubernetes Cluster Deployment Challenge

```bash

**Scenario**

Welcome to RocketCorp's DevOps team! We're migrating our applications to Kubernetes and are relying on Terraform to manage our infrastructure. Your task is to deploy a Kubernetes cluster along with some essential resources using Terraform.

**Requirements**

- Initialize a new Terraform project in your own Git repository.

- Use a Terraform module to create a Kubernetes cluster on a cloud provider of your choice (AWS, GCP, Azure).

Once the cluster is up, use Terraform to deploy the following Kubernetes resources:

- A `Namespace` named `rocket-app`
- A `Deployment` running the Nginx image under the `rocket-app` namespace
- A `Service` of type `LoadBalancer` to expose the Nginx deployment
- Output the LoadBalancer's IP or domain name at the end of the Terraform execution.
- Document all the steps in a README.md, explaining how to run your code to bring up the Kubernetes cluster and how to tear it down.

**Additional Constraints**

- Ensure that your Terraform code is idempotent.
- Add comments to your Terraform files explaining your choices.

**Evaluation Criteria**

- Successful creation of a Kubernetes cluster.
- Successful deployment of specified Kubernetes resources.
- Idempotent code.
- Code quality and organization.
- Detailed README.md explaining the steps to run the code.

Please submit the URL of your Git repository that includes all your Terraform files and a README.md for review as a PR in this repository.

```

## 22. Istio with Kubernetes

```bash

**Scenario:**

Create a simple Istio project where you'll deploy a couple of microservices on a Kubernetes cluster with Istio installed. The main idea is to use Istio to manage traffic between these services.

**Prerequisites**

- Kubernetes cluster up and running (use local minikube or rancher desktop)
- Istio installed on the cluster

Files Needed
1. service-a-deployment.yaml

#######################################################
apiVersion: apps/v1
kind: Deployment
metadata:
  name: service-a
spec:
  replicas: 1
  selector:
    matchLabels:
      app: service-a
  template:
    metadata:
      labels:
        app: service-a
    spec:
      containers:
        - name: service-a
          image: nginx
          ports:
            - containerPort: 80
#######################################################

2. service-b-deployment.yaml

#######################################################
apiVersion: apps/v1
kind: Deployment
metadata:
  name: service-b
spec:
  replicas: 1
  selector:
    matchLabels:
      app: service-b
  template:
    metadata:
      labels:
        app: service-b
    spec:
      containers:
        - name: service-b
          image: nginx
          ports:
            - containerPort: 80
#######################################################

Your task is to create the routing rules using Istio.

Test the routing by accessing the service endpoint multiple times. You should see the traffic is distributed according to the weights defined in the virtual service.

```

## 23. OPA with Terraform (Security as Code)

Solution here >> [Solution](./code/q23/README.md) >> Only look once you have attemptesd the question.

```bash

```bash

**Context**

You're a DevOps engineer at a growing startup. The company uses Terraform to manage its cloud infrastructure, and the management has decided to enforce specific policies for cloud resources to maintain a certain standard and compliance. Open Policy Agent (OPA) has been chosen to evaluate these policies.

**Objective**

- Use Terraform to provision an AWS S3 bucket.

Write OPA policies that validate:
  - The S3 bucket must have versioning enabled.
  - The S3 bucket must not be publicly accessible.
- Integrate the OPA policies within the Terraform flow, so that terraform apply will validate against your policies.

**Constraints**

- You have to use Terraform for provisioning resources.
- OPA policies should be written in Rego.
- The task should be accomplishable via a simple terraform apply command, assuming OPA is correctly configured.

**Prerequisites**

- Terraform installed
- OPA installed
- AWS CLI configured

**Deliverables**

- Terraform configuration files (main.tf, variables.tf, outputs.tf).
- OPA policy file(s) in Rego format.

A README explaining:
- How to set up the environment.
- How to run the Terraform configuration and OPA policies.
- How to verify that the policies are enforced.

BONUS:
- Write some tests for the OPA policy (in Rego)

**Notes**

- Hint: You may use OPA playground to assist and for testing
For the sake of this exercise, you can assume that you have AWS credentials set up, and you're familiar with basic OPA and Terraform commands. If the OPA policies fail, Terraform should not provision the S3 bucket.

```

## 24. Create Immutable AMIs with Packer

Solution here >> [Solution](./code/q24/README.md) >> Only look once you have attemptesd the question.

```bash

**Context**

You're tasked to create a system where EC2 instances are disposable and can be replaced easily without manual intervention. You decide to go with Immutable Infrastructure by creating custom AMIs using Packer.

**Objective**

- Create a Packer script to build an Amazon Machine Image (AMI) with a web server (e.g., Nginx) pre-installed.
- Deploy an EC2 instance using the generated AMI via Terraform.
- Validate that the EC2 instance is serving the web server correctly.

**Constraints**

- Use Packer to create the AMI.
- Deploy the EC2 instance with Terraform.
- The instance should be in a public subnet and accessible over HTTP.

**Deliverables**

- Packer script file (packer.json).
- Terraform files for infrastructure deployment.
- README with instructions on how to build the AMI and deploy the EC2 instance.

```

## 25. Secrets Management with HashiCorp Vault

Solution here >> [Solution](./code/q25/README.md) >> Only look once you have attemptesd the question.

```bash

**Context**

You're responsible for the secure storage and management of secrets. You choose HashiCorp Vault as your tool for this task.

**Objective**

- Deploy a Vault server using Docker or directly on an EC2 instance.
- Initialize and unseal the Vault.
- Store a secret (e.g., database credentials) in the Vault.
- Use Terraform to deploy an EC2 instance.
- Configure the EC2 instance to read the secret from the Vault and write it to a text file.

**Constraints**

- Deploy Vault either as a Docker container or directly on an EC2 instance.
- Use Terraform for deploying any infrastructure.
- The secret should only be accessible by the EC2 instance and not exposed to the outside world.

**Deliverables**

- Vault configuration files, if any.
- Terraform files for Vault and/or EC2 instance deployment.
- README explaining how to deploy Vault, store a secret, and how the EC2 instance fetches it.

```

## 26. Infrastructure as Code Refactor

Solution here >> [Solution](./code/q26/README.md) >> Only look once you have attemptesd the question.

```bash

**Context**

Your organisation has AWS CloudFormation templates. Your task is to migrate those to Terraform.

**Objective**

Take an existing CloudFormation template.
Convert it to a Terraform configuration.
Deploy resources using both and compare.

```

## 27. Chaos Engineering

Solution here >> [Solution](./code/q27/README.md) >> Only look once you have attemptesd the question.

```bash

**Context**

You are the lead engineer responsible for the resilience of a microservice-based system deployed on AWS. To ensure that the system can handle failure gracefully, you have decided to introduce chaos into the system using Chaos Monkey.

**Objective**

- Install and configure Chaos Monkey on an AWS EC2 instance.
- Use Chaos Monkey to terminate instances in a specified Auto Scaling Group.
- Monitor the behavior of the system using AWS CloudWatch when instances are terminated.

**Constraints**

- Assume you have full access to the AWS environment.
- You can use any programming/scripting languages you are comfortable with.

**Deliverables**

- Configuration file used for Chaos Monkey.
- CloudWatch alert and monitoring configuration.
- Brief documentation explaining the steps taken, and observations during the chaos tests.

```


## 28. Monitoring and Alerting

Solution here >> [Solution](./code/q28/README.md) >> Only look once you have attemptesd the question.

```bash

**Context**

You are responsible for ensuring that a Python Flask web application is operating efficiently. You have decided to set up monitoring and alerting using Prometheus and Grafana, both of which are installed in a Kubernetes cluster.

**Objective**

- Configure Prometheus to scrape metrics from the Flask application, which exposes metrics at /metrics.
- Set up a Grafana dashboard to visualize these metrics.
- Create a Grafana alert to notify you when CPU usage goes above 80%.

**Constraints**

- Assume you have full access to the Kubernetes cluster.
- You can use any programming/scripting languages you are comfortable with.

**Deliverables**

- Prometheus configuration file.
- Grafana dashboard and alert configuration.
- Documentation detailing your monitoring and alerting setup.

```

## 29. Traefik with ECS

Solution here >> [Solution](./code/q29/README.md) >> Only look once you have attemptesd the question.

```bash

**Context**

You're working for a startup that wants to deploy a microservices-based application on AWS ECS. They've chosen Traefik as their reverse proxy and load balancer due to its ease of use and configuration options. Your task is to set up the infrastructure and deployment pipeline.

**Objective**

- Create an ECS cluster using Terraform.
- Deploy at least two different services (could be simple web apps) in the ECS cluster.
- Implement Traefik as the reverse proxy for routing traffic to these services.
- Ensure SSL termination at the Traefik level.
- Make sure the services are accessible only via Traefik and not directly.

**Constraints**

- Use AWS ECS for container orchestration.
- Use Traefik v2.x for reverse proxy.
- Use Terraform for infrastructure as code.
- For SSL, you can use Let's Encrypt or any other method you're comfortable with.

**Deliverables**

- Terraform code files.
- ECS task and service definitions in JSON or YAML format.
- A Traefik configuration file.

Brief documentation explaining:

- Your setup and architecture.
- Any challenges you faced and how you overcame them.
- Instructions for deploying and tearing down the infrastructure.

```


## 30. Network Automation with Ansible

Solution here >> [Solution](./code/q30/README.md) >> Only look once you have attemptesd the question.

```bash

**Context**

You're responsible for automating the network configurations of an organization with multiple routers and switches. Traditionally, changes have been done manually, leading to a lot of human errors and inefficiency.

**Objective**

Automate the network configurations using Ansible.

1. Setup Ansible to manage network devices.
2. Automate the following configurations:
  - VLAN setups
  - OSPF routing protocol configurations
  - Access Control Lists (ACLs)
3. Write a playbook that:
  - Backs up the current configurations
  - Applies the new configurations
  - Rolls back in case of failure
4. Integrate this with a CI/CD pipeline to automate the deployment.

**Constraints**

- Use Ansible for automation.
- Target devices are Cisco routers and switches.
- For CI/CD, use Jenkins or any CI/CD tool you're comfortable with.

**Deliverables**

- Ansible playbooks for each automation task.
- A CI/CD pipeline configuration file.
- Brief documentation explaining:
  - How to set up the project
  - Any credentials or environment variables used


For this project, you'd typically need:

- Ansible installed on a control node.
- Network access to the routers/switches.
- Relevant credentials to access these devices.
- The Ansible playbooks would interact with the network devices via protocols like SSH, SNMP, etc. You can manage the playbooks' source code in a Git repo and use Jenkins or another CI/CD tool to deploy changes automatically.

```

Go to the top of the page link >> [Top](#devops-challenges)

## 31. K8s with Secrets Management Challenge

Solution here >> [Solution](./code/q31/README.md) >> Only look once you have attemptesd the question.

```

## Overview

This challenge involves setting up Kubernetes deployments and services, either on a cloud-based Kubernetes service like EKS/AKS/GKE, or locally via Minikube.

### Objectives

1. Create a Kubernetes deployment and service.
   - **Bonus**: Implement a Horizontal Pod Autoscaler (HPA).

2. The deployment must use a secret named `KEY_SECRET`.

3. Mount this secret in the deployment.

4. `KEY_SECRET` should be used in the container in two ways:
   - As a volume mount.
   - As an environment variable.

---

## Requirements

- You may use simple applications like `nginx`, `httpd`, etc.
- Feel free to use any programming language or open-source tools.
- Additional code can be written in Terraform or as scripts.

### Criteria

1. Provide all YAML manifest files, pipelines, and scripts used.
2. Code should be clean and well-documented.
3. Document your steps in a `README.md` file.
4. Use either public cloud-based Kubernetes (EKS, AKS, GKE) or local Kubernetes (Minikube).
5. Create a dedicated service account for the deployment.
6. Always maintain at least 2 running pods.
7. Utilize a NodePort type service for the deployment.
8. Only 1 pod should be unavailable during rolling updates (Hint: Use the `maxUnavailable` parameter wisely).

### Bonus Points

- Scan containers before deployment; fail the pipeline if severity is high or critical.
- Containers should not run as root.

```

## 32. Docker-Compose Challenge (2)

Solution here >> [Solution](./code/q32/README.md) >> Only look once you have attemptesd the question.

```bash

Set up a basic local development environment using `docker-compose`. 

This environment will include three services:

1. **Backend Service**: Utilize a `ruby` image, updated to the latest version. Bind the local `backend` directory to `/project/backend` within the container. This service should also expose port `6000` for UDP traffic, facilitating local DHCP services. Use the latest `centos` OS version available.

2. **Frontend Service**: Employ an `aspnet` image, also using the latest version. Bind the local `frontend` directory to `/project/frontend` in the container. This service should expose port `8080` from the container to port `80` externally using TCP. Connect this service to an external network named `fend-ingress`.

3. **Database Service**: Run a `mysql` image, opting for the latest stable version. This service should be part of a local network called `database`.

Ensure that the `backend` service's port mapping uses the extended syntax, while the volume definitions for both `backend` and `frontend` services employ the concise syntax.

The services should initiate in the sequence: `db`, followed by `backend`, and finally `frontend`.


```

## 33. Ansible Advanced (1)

Solution here >> [Solution](./code/q33/README.md) >> Only look once you have attemptesd the question.

```bash

**Ansible Role-Based Deployment Exercise**

**Context**

You're a DevOps engineer at a startup that's transitioning from manual configurations to automated infrastructure. The team has selected Ansible as the automation tool. You're responsible for automating the setup and management of a three-tier architecture: load balancer, application server, and database server.

**Objective**

Use Ansible to provision a load balancer (HAProxy), application server (running a Node.js app), and a database server (MySQL).

Create Ansible roles for:
- Load Balancer
- Application Server
- Database Server
Make sure the configurations are idempotent and can be re-run multiple times without causing errors.

**Constraints**

- You must use Ansible for provisioning and configuration.
- Divide the project into roles for better manageability.
- The Ansible playbook should be run with a single command.

**Prerequisites**

- Ansible installed
- Vagrant or a cloud provider to host your virtual machines
- SSH access to the virtual machines

**Deliverables**

- Ansible roles for the Load Balancer, Application Server, and Database Server.
- An Ansible playbook that uses these roles.

A README explaining:

- How to set up the environment.
- How to run the Ansible playbook and roles.
- How to verify the setup works as expected.

Notes

- This project aims to test your ability to create reusable Ansible roles and manage a multi-tier architecture.
- Feel free to create your roles locally, or use Ansible Galaxy to pull pre-configured roles, then modify them to suit your needs.
- The configurations should be secure, taking into account things like firewall rules, minimal permissions, etc.

```

## 34. Helm Deployment Challenge

Solution here >> [Solution](./code/q34/README.md) >> Only look once you have attemptesd the question.

```bash

# Helm Deployment Exercise

## Context

You're a DevOps engineer at a software development company that's leveraging Kubernetes for its new microservices-based architecture. You've been given the task of packaging, sharing, and deploying services using Helm, the package manager for Kubernetes.

## Objective

- **Package an existing Kubernetes service into a Helm chart.**
- **Deploy a Redis cluster using a community Helm chart.**
- **Override specific values in the Redis Helm chart according to given requirements.**
- **Create a Helm chart for a custom Node.js application and deploy it.**

## Requirements

### Task 1: Package Kubernetes Service

You have an existing Kubernetes deployment and service (YAML files) for a simple Python Flask application. Your task is to convert these YAML files into a Helm chart.

### Task 2: Deploy Redis Cluster

- Use a Helm chart from the community charts to deploy a Redis cluster into the same Kubernetes cluster.
- The Redis cluster should have at least 1 master and 2 slave nodes.

### Task 3: Customize Redis Cluster

- Override the default password for the Redis cluster.
- Set resource limits and requests for CPU and Memory on Redis nodes.

### Task 4: Custom Node.js App

- Create a Helm chart for deploying a custom Node.js application that connects to the Redis cluster.
- The Node.js application should have environment variables to connect to the Redis cluster.

## Constraints

- Helm should be used for all deployments.
- All Helm charts should be stored in a centralized Helm repository.
- Use Helm 3.x for this project.
- Work with any Kubernetes distribution of your choice (EKS, AKS, GKE, Minikube, etc.).

## Deliverables

- Helm charts for all the services.
- A README.md file that explains:
  - How to install the Helm charts.
  - How to customize the Helm charts.
  - How to verify that the deployments were successful.

## Bonus Points

- Implement Helm hooks for database schema migration.
- Use Helm to rollback one of the deployments to its previous version.


```

## 35. Advanced Helm Challenge

Solution here >> [Solution](./code/q35/README.md) >> Only look once you have attemptesd the question.

```bash

# Advanced Helm and Helmfile Project Scenario

## Context
You are a DevOps engineer at a company that heavily utilizes Kubernetes for its applications. You are tasked to improve the deployment process using advanced Helm features and Helmfile for orchestrating multiple releases.

## Objective

1. Create Helm charts for a frontend and a backend application.
2. Create a Helmfile that orchestrates these charts with different environments (dev, staging, and prod).
3. Use Helm hooks to run database migrations during the release process.
4. Enable monitoring on these applications using Helm's built-in support for Prometheus and Grafana.

## Requirements

- Each application (frontend and backend) must have its own Helm chart.
- Helmfile should manage the releases.
- Implement a database migration script that will run as a Helm hook.
- Use a community Helm chart for setting up Prometheus and Grafana.

## Constraints

- You should be using Helm v3.x
- Helmfile should be properly installed and configured.

## Deliverables

- Helm charts for frontend and backend.
- Helmfile configuration(s).
- Any script(s) used for database migrations.
- A README.md file documenting the steps taken, and how to run and manage the project.

## Evaluation Criteria

- Following best practices for Helm and Helmfile.
- Clarity and maintainability of code.
- Successful deployment of both frontend and backend using Helmfile.
- Working Prometheus and Grafana setup.

## Bonus Points

- Demonstrate how to rollback a failed release using Helmfile.
- Show how to securely manage sensitive data using Helm secrets or any other secure storage.

Good luck! This task is designed to gauge your understanding of Helm and Helmfile, focusing on their advanced features for managing complex deployments. Feel free to ask if you have any questions or face any challenges! 🚀


```

## 36. Bash Automation Challenge

Solution here >> [Solution](./code/q36/README.md) >> Only look once you have attemptesd the question.

```bash

## Context

You're an automation engineer, and your team often needs to set up new environments for testing and development. They rely on a mix of different databases and web servers for their tasks. Manually installing and configuring these components is time-consuming and error-prone. You decide to create a Bash script to automate this process.

## Objective

Your task is to create a Bash script that can install, configure, and manage the following software components on a Ubuntu machine:

- MySQL
- PostgreSQL
- Nginx
- Apache HTTP Server

### Specific Requirements

1. **Interactivity**: 
    - The script should interactively ask the user which software they want to install.
    - Offer a menu of choices and allow multiple selections.
  
2. **Installation and Configuration**: 
    - For MySQL and PostgreSQL, set the root password, create a database, and create a user.
    - For Nginx and Apache, configure a virtual host.

3. **Logging**: 
    - All actions, errors, and user inputs should be logged to a log file with a timestamp.

4. **Status Checks**: 
    - Add an option in the script to check the status of all installed services.

5. **Uninstallation**: 
    - Provide an option to uninstall any of the installed software and remove any configurations made by the script.

## Constraints

- The Bash script must be compatible with Ubuntu.
- No third-party scripting languages or packages; stick to Bash and standard Ubuntu utilities.

## Deliverables

- Your Bash script.
- A `README.md` file explaining:
  - How to set up the environment.
  - How to run the script.
  - How to verify that the software components are installed and configured correctly.

## Bonus Points

- **Error Handling**: 
    - Robust error handling and informative error messages.
  
- **Dry-Run Mode**: 
    - Add a 'dry-run' mode that only displays the commands that would be executed, without actually running them.

```

## 37. Development with Tiltfiles

Solution here >> [Solution](./code/q37/README.md) >> Only look once you have attemptesd the question.

```bash

## Context

You're a DevOps Engineer responsible for setting up local development environments. The engineering team works on a microservices architecture, and there's a need to simplify the development workflow. Tilt has been chosen as the tool to automate the local setup and make the developer experience smoother.

## Objective

- Use Tilt to set up a local development environment.
- The environment should include three microservices: a `frontend`, a `backend`, and a `database`.
- `frontend` should be a simple React application.
- `backend` should be a simple REST API built using Python's Flask.
# - `database` should be a MongoDB instance.

## Requirements

- Each microservice should run in its own Docker container.
- The Tiltfile should be configured to live reload the `frontend` and `backend` services upon code changes.
- Implement a way to seed initial data into the MongoDB database.
- Ensure the services are inter-communicable and can talk to each other.

## Constraints

- You have to use Docker for containerization.
- The configuration should be done using a Tiltfile.

## Prerequisites

- Tilt installed
- Docker installed

## Deliverables

- Source code for `frontend` and `backend` services.
- Dockerfiles for each service.
- The main Tiltfile to orchestrate the local environment.
- A README.md file that explains:
  - How to set up the environment.
  - How to run the local development setup.
  - How to verify that everything is running correctly.

## Bonus Points

- Use Tilt extensions to further simplify the development workflow.
- Include logging and monitoring solutions for your local environment using Tilt's built-in features.

```

## 38. Secure Access to Production Systems

Solution here >> [Solution](./code/q38/README.md) >> Only look once you have attemptesd the question.

```bash

# Secure Access to Production Systems

## Scenario

You are a DevOps Engineer at an emerging tech company. As the company grows, securing access to production servers becomes increasingly crucial. However, you also need to ensure that the flow of development and deployment doesn't slow down. Your task is to set up a system that allows secure access to production servers.

## Objectives

- **SSH Jump Host**: Set up a jump host that will act as an intermediary between the developers and the production servers. Developers will SSH into the jump host first, and from there, access the production servers.
- **Ansible for Access Control**: Use Ansible to automate the process of updating SSH keys and other access controls for the production servers. This automation should run through the jump host.

## Constraints

- The jump host should be a minimal, hardened system, with only essential services running.
- You should use Ansible roles and playbooks to manage configurations.
- Document how to add or remove a user's access.

## Prerequisites

- Ansible installed on your local machine.
- Two or more remote servers (Production Servers).
- One remote server for the Jump Host.
- SSH access to all servers.

## Deliverables

1. Ansible Playbooks and roles for setting up the jump host and managing SSH access.
2. A secure and minimal setup on the jump host.
3. Documentation on:
    - How to set up the environment.
    - How to run the Ansible playbooks.
    - How to verify that the setup is secure and functional.

## Notes

- Assume that you have root access to all the servers involved.
- The configuration should be idempotent. Running the Ansible playbooks multiple times should not change the state of the system beyond the first successful run.


```


## 39. Automated Backup and Restore Process

Solution here >> [Solution](./code/q39/README.md) >> Only look once you have attemptesd the question.

```bash

# Automated Backup and Restore Process

## Scenario

Your mission is to implement an automated backup process for critical systems and databases. Time is money, and we need to make sure we can get our systems back up and running ASAP if something goes awry.

## Objectives

1. **Automate Database Backups**: Use bash scripting to automate backups for a MySQL database.
2. **Remote Storage**: Store the database backups in a remote location like S3 or Azure Blob Storage.
3. **Automate Restore Process**: Create a bash script that can restore the database from a backup.

## Tasks

### Automate Database Backups

1. Create a bash script that will backup a MySQL database and save it locally.
2. The script should log its activities, so you know if something went wrong.

### Remote Storage

1. Modify your bash script to upload the backup to a remote storage service like S3 or Azure Blob Storage.
2. Secure the backup with encryption before sending it off to remote storage.

### Automate Restore Process

1. Create a bash script to restore the database from a backup stored in S3 or Azure Blob Storage.
2. The script should log its activities and any errors.

### Bonus

- Implement email notifications for successful backups and restores, and for failures.

## Deliverables

1. Bash script for automated backups.
2. Bash script for automated restores.
3. A README guide on how to set up and use your scripts.


```

## 40. Configuration Management with Puppet

Solution here >> [Solution](./code/q40/README.md) >> Only look once you have attemptesd the question.

```bash

# Configuration Management with Puppet

## Scenario
You are responsible for maintaining a large fleet of servers that need to have standardized configurations. You've decided to use Puppet for configuration management. Additionally, you want to adopt a test-driven approach to ensure reliability.

## Objectives

1. **Set up Puppet Master and Agent**: Configure a Puppet master and at least one Puppet agent. Validate successful communication between them.
   
2. **Implement Standard Configurations**: Create Puppet manifests to standardize the following configurations across all servers:
    - Install and manage a web server (e.g., Apache or Nginx).
    - Set up user accounts with specific permissions.
    - Ensure specific packages are installed or removed.
   
3. **Test-Driven Development (TDD)**: Before deploying any changes to configurations, write tests to validate them. Use `rspec-puppet` or a similar testing framework for this.

4. **Monitoring**: Make sure to include monitoring checks to verify configurations.

5. **Documentation**: Provide a README file with setup instructions, how to run your Puppet configurations, and how to execute tests.

## Bonus
- **Scalability**: Show how your solution can scale to handle more servers.
- **Security**: Implement some basic security practices like firewall rules or file integrity checks.

## Tips
- Make sure to document your steps well.
- Try to automate as much as possible.

## Deliverables
- All Puppet manifests.
- Testing scripts.
- A README.md with instructions.


```

## 41. Advanced Ansible with Molecule Testing

Solution here >> [Solution](./code/q41/README.md) >> Only look once you have attemptesd the question.

```bash

## 41. Advanced Ansible with Molecule Testing

### Scenario:
You're tasked with automating server provisioning and configurations for a new microservices application. To ensure the Ansible roles and playbooks work as expected, you also need to integrate a testing framework called Molecule.

### Objectives:
1. Create Ansible roles for configuring a web server, a database, and a caching layer.
2. Utilize Ansible Vault for sensitive information.
3. Use Molecule to test the Ansible roles.
4. Provide documentation on how to run the Ansible playbooks and Molecule tests.

### Skills Required:
- Ansible
- Ansible Vault
- Molecule
- YAML
- Bash Scripting
- Git
- Docker (optional for Molecule testing)

### Tasks:
1. Install Ansible, Molecule, and any other required dependencies.
2. Initialize a new Ansible role for each of the three layers (web server, database, caching).
3. Write playbooks that utilize these roles.
4. Encrypt sensitive data using Ansible Vault.
5. Write Molecule scenarios to test the functionality of each Ansible role.
6. Use Git to version control your code.
7. Write a README file explaining how to execute the Ansible playbooks and run the Molecule tests.

### Bonus:
1. Integrate this Ansible project into a CI/CD pipeline.
2. Utilize advanced Ansible features like loops, conditionals, and handlers.

### Testing:
- Use Molecule to perform the tests on your Ansible roles.
- Make sure to cover idempotency tests, and syntax checks.

### Deliverables:
- Ansible roles and playbooks
- Molecule test scenarios
- README file
- Git repository link


```

## 42. Terraform with Terratest Challenge

Solution here >> [Solution](./code/q42/README.md) >> Only look once you have attemptesd the question.

```bash

## Terraform Infrastructure Deployment with Terratest for Testing

### Scenario:
You are tasked with creating a scalable and maintainable AWS infrastructure for a new web application. The team wants to be sure that the infrastructure is stable and meets all the requirements before and after deployment. Hence, you'll write automated tests using Terratest to validate the Terraform code.

### Objectives:
1. Create AWS infrastructure using Terraform:
   - VPC, Subnets, EC2 instances, Load Balancer
2. Use remote backends like S3 to store the Terraform state files.
3. Write tests using Terratest to validate the infrastructure.
   - Test if the VPC is created.
   - Test if the number of EC2 instances matches the requirement.
   - Test if the Load Balancer is distributing traffic.
4. Automate the testing process using a CI/CD pipeline.

### Prerequisites:
- Basic understanding of AWS services
- Familiarity with Terraform and Go language

### Tools Needed:
- Terraform
- AWS CLI
- Go
- Terratest
- A CI/CD tool like Jenkins or GitHub Actions

### Bonus:
1. Use a Makefile to streamline the test execution.
2. Integrate Slack notifications for test results.


```
