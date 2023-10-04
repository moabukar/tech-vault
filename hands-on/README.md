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
