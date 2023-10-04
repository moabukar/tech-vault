# Hands on-questions (Use Ubuntu machine ideally)

## 1. K8s deployment

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

## 2. Linux

```bash

Scenario:

Complete the file stub located at `/home/ubuntu/tech-vault-q2/runscript.sh` with one or more commands to achieve the following tasks:

- Extract the archive located at `/home/ubuntu/2025-linux-perm-adjustment/backup.tar.gz`.
- Set permission "0664" for all the files that were just extracted.
- Set permission "0775" for all the directories that were just extracted.
- Change the owner to "anonymous" and the group to "no-team" for all the extracted files and directories.
- Create a new archive with the adjusted files and directories, naming it `/tmp/fixed-archive.tar.gz`.

**Notes:**

- Your solution will be evaluated in a new, clean setup. Make sure all work is performed in the `/home/ubuntu/tech-vault` directory.
- Execute all tasks with a single `sudo activate` command run from within the question directory. (Hint: use alias)
- You have sudo permissions, if needed.

```

## 3. K8s enhancements (multiple choice)

```bash

Scenario:

While working on Kubernetes cluster enhancements, you need to set up a recurring task that makes a call to a remote API. Which of the following commands is correct to perform this action?

Pick ONE option:

1. `kubectl run scheduler task --image=toolbox --schedule="*/1 * * * * -- curl -s https://api.cyber-widget.com/refresh"`
  
2. `kubecmd create periodic-task --image=toolbox --timing="/1 * * * * -- curl -s https://api.cyber-widget.com/refresh"`
  
3. `kubecmd run periodic task --image=toolbox --timing="*/1 * * * * -- curl -s https://api.cyber-widget.com/refresh"`
  
4. `kubectl create scheduler task --image=toolbox --schedule="*/1 * * * * -- curl -s https://api.cyber-widget.com/refresh"`

**Notes:**

- The correct answer will be evaluated on its ability to perform the task as described.

```

## 4. SSL Certificates

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

## 5. Service roles

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

## 6. Terraform test

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

## 7. Ansible

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
