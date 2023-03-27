[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

# Tech-interview-questions

Note: A documentation of technical questions curated by experienced Engineers who have conducted many interviews. 

For any fixes, updates or new additions, please make a pull-request (PR). Thank you! 

## Topics overview

- [X] [Linux](#small_blue_diamond-Linux)



## DevOps

### :small_blue_diamond: Linux

- What are inodes in Linux?
- Explain the Linux boot process
- What is a zombie process?
- Difference between soft links and hardlinks?
- What are namespaces and c-groups?


- What does chmod +x FILENAME do?
- Which command will show you free/used memory? 


Advanced:

- Does free memory exist on Linux?
- How can I check if a server is down?
- What is inside /proc?
- A process on the system can no longer log files, what can I do?
- 

### :small_blue_diamond: Networking

- What is HTTP? How is HTTPS different?
- TCP vs UDP
- 

Advanced:

- When I type google.com into the browser, what actually happens? (go into as much detail as you can)
- I can't reach a website, how can I troubleshoot? (use deep Linux + networking knowledge )

### :small_blue_diamond: Git

- What is Git?
- Difference between Git and SVN?
- What is the basic Git workflow?
- Difference between git pull and Git fetch
- What is git cherry-pick?
- What is the HEAD in Git ?
- When do I use Git stash?
- What does git reset do?

Advanced:
- I need to update my local repos, what commands do I use ?
- I need to rollback to a previous commit and I don't need my recent changes, what do I use ?
- How can I amend an older commit?
- What is the command to check the difference between two commits ?

### :small_blue_diamond: AWS

-----General--------
- What is AWS? 
- What are two services of AWS where you could store secrets? 

-----Networking-----
- What is a VPC?
- How do Subnets work?
- What network object do you need to allow a server ingress from the internet?
- What are the different type of load balancers in AWS?


- Name some managed runtimes for Lambda
- 
- 

### :small_blue_diamond: Azure

- What is Azure?
- What are ARM templates in Azure?
- What is Azure CDN?
- How is Azure App Service different from Azure Functions?
- How to define an Environment Variable on Azure using Azure CLI?
- How would you choose between Azure Blob Storage vs. Azure File Service?
- What is difference between Keys and Secrets in Azure Key Vault?
- What’s the difference between Azure SQL Database and Azure SQL Managed Instance?
- When should we use Azure Table Storage over Azure SQL?
-  Explain what is the difference between Block Blobs, Append Blobs and Page Blobs in Azure?

Advanced:

- What to use: many small Azure Storage Blob containers vs one really large container with tons of blobs?
- 


### :small_blue_diamond: Terraform

- What is Terraform state



Advanced:
- I have 3 people in my team who want to work on the same AWS Infrastructure on Terraform as well as same state. What can I do to ensure there are no clashes?
- In a pipeline, where would you store the Terraform state?


### :small_blue_diamond: Docker & K8s


Container (Docker):
- What is a container and what are its fundamentals?
- What are c-groups and namespaces in Linux?
- What is Docker and how does it work?
- When do I use Docker Compose vs Docker Swarm and K8s?
- What is a Dockerfile used for? 
- Can you explain the basic components of a Dockerfile?
- How is a container different from a virtual machine?

Container Orchestration (Kubernetes = K8s):

- What is Kubernetes?
- What problems does Kubernetes solve? 
- What is the difference between Docker and K8s?
- What is a Pod and what does it do?
- How can containers within a pod communicate with each other?
- What is a K8s cluster ?
- What are deployments?
- What are stateful sets?
- How do you restrict pod-to-pod communication in a cluster?
- How can I rollback a deployment?
- What are namespaces? 
- What is the role of the kube-apiserver?


Advanced:

- Can you mention some good practices to follow when creating containers?
- Can you explain a simple K8s cluster architecture and the components within it?
- What happens when a master node fails? 
- What happens when a worker node fails?
- What is an Ingress controller?
- How can one build a highly availabe (HA) cluster in K8s?
- What is the role of ETCD in K8s?

### :small_blue_diamond: CI/CD


### DevOps methodology, practices,  & Agile

- What is meant by continuous integratons?
- What are the advantages of DevOps?
- Can you describe some branching strategies you have used?
- What is the blue/green deployment pattern?


### :small_blue_diamond: System Design

- What is a CDN and why would I use one?
- What are CDN edge servers?
- How does CDN caching work?
- What is Cache invalidation? 
- What are some cache invalidation methods?
- What is a microservice architecture and when would I consider using one?
- 


Advanced:

- Explain why CDN (in)availability may be a problem for using WebSockets? 

## BackEnd & FrontEnd


### :small_blue_diamond: Golang

- What is Go?
- Why was the Go langauge created?
- What is a pointer?
- What is the difference between the = and := operator?
- What are goroutines?
- Does Go have exceptions?


Advanced:
- Implement a function that reverses a slice of integers?
- What are generics and how do they work?


### :small_blue_diamond: Python



### JavaScript (TS,nodeJS...)




## Data


### Data Fundamentals


### SQL


### ETL, Pipelines