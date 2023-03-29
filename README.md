[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

# Tech interview questions

Note: A documentation of carefully curated technical engineering questions curated by experienced Engineers who have conducted many interviews. These are amongst popular and important engineering questions to test knowledge of candidates in interviews. 

Any questions taken from external references are referenced [below](#references). 

## Contributing

- To contribute, please read our [Contributing Guidelines](CONTRIBUTING.md). For any fixes, updates or new additions, please make a pull-request (PR). Thank you!

## Charity 
- Since this is a community-based project and it is run by the community - we (the creators) do not gain any personal nor financial gain other than helping the community. Instead, any financial gain would be better suited to a charity. So we wanted to take it upon us to help those in need. We, as a community, have chosen a certified charity to donate to. Here is the link to donate to:


## Topics overview

- [X] [DevOps](#devops)
    - [Linux](#small_blue_diamond-linux)
    - [Networking](#small_blue_diamond-networking)
    - [Git](#small_blue_diamond-git)
    - [AWS](#small_blue_diamond-aws)
    - [Azure](#small_blue_diamond-azure)
    - [Terraform](#small_blue_diamond-terraform)
    - [Docker & K8s](#small_blue_diamond-docker--k8s)
    - [Ansible](#small_blue_diamond-ansible)
    - [CI/CD](#small_blue_diamond-cicd)
    - [DevOps methodology, practices, & Agile](#small_blue_diamond-devops-methodology-practices--agile)
- [X] [System Design](#system-design)
    - [CDN & Caching](#small_blue_diamond-cdn--caching)
    - [Databases](#small_blue_diamond-databases)
- [X] [Backend & Frontend](#backend--frontend)
    - [Golang](#small_blue_diamond-golang)
    - [Python](#small_blue_diamond-python)
    - [Java](#small_blue_diamond-java)
    - [JavaScript](#small_blue_diamond-javascript-tsnodejs)
- [X] [Data](#data)
    - [Data Modelling & Schemas](#data-modelling-and-schemas)
    - [Data Architect](#data-architect)
    - [Data Engineering](#data-engineering)
    - [SQL](#sql)
    - [ETL & Data Pipelines](#etl-pipelines)
- [X] [Machine Learning](#machine-learning)
- [X] [Cyber Security & InfoSecurity](#cyber-security--info-security)
- [X] [Interpersonal skills]()
- [X] [References](#references)


## DevOps

### :small_blue_diamond: Linux

- What is Linux and difference between UNIX and Linux?
- What is the Linux kernel?
- What are inodes in Linux?
- Explain the Linux boot process
- What is a zombie process?
- Difference between soft links and hardlinks?
- What are namespaces and c-groups?
- What are symbolic links?
- What are the different types of permissions in Linux?
- What is swap space?
- What is chmod, chown and chgrp in Linux?
- What are cronjobs?

Commands (basic & advanced):
- What does chmod +x FILENAME do?
- Which command will show you free/used memory?
- Which command will show me the current directory I am in?
- How can I terminate an on going process?
- Write the command that will display all .yaml files including permissions of each file? ()
- How can I found the status of a process?
- What is the command to show all open ports?
- How do you find the process ID of a running process in Linux?
- How do you find the dependencies of a package in Linux?

Advanced:

- Does free memory exist on Linux?
- How can I check if a server is down?
- What is inside /proc?
- A process on the system can no longer log files, what can I do?
- What is LILO?
- What are syscalls in Linux and how do they work?
- What is no route to host?
- What is the difference between a hard link and a symbolic link in Linux?

Linux Advanced (Scenario based questions):

- Explain the linux boot process
- A process on the system can no longer log files, how would you debug?
- How can I check if a Linux system is healthy?
- What happens when you type "ls" or "cd" into a terminal? (go deep and talk about what happens behind the scenes - kernel level)
- How can I check if a server is down?
- How are Linux processes killed on a lower level?
- I have accidentally entered `cd/bin` and done `chmod 644 chmod` - how can I fix this?
- How would you troubleshoot a network connectivity issue in Linux?
- How do you troubleshoot a connectivity issue with a remote server in Linux?
- How do you view and edit the system logs in Linux?
- How do you troubleshoot a DNS issue in Linux?

### :small_blue_diamond: Networking

- What is HTTP? How is HTTPS different?
- TCP vs UDP
- What is DNS and how does it work?
- What is TLS?
- What are CIDR ranges?
- What is ingress and egress traffic?
- What is a switch vs a hub?
- What is a switch vs a router?
- What is HTTPS vs Websockets?
- Explain how a 3 way handshake works?
- Stateless vs Stateful firewalls?
- What are VPCs?
- What is subnetting?
- What is DHCP?

Advanced + Scenario based questions:

- When I type google.com into the browser, what actually happens? (go into as much detail as you can)
- I can't reach a website, how can I troubleshoot? (use deep Linux + networking knowledge )
- Can you break down the OSI model and what does it signify?
- How does mTLS work and compare it to TLS?
- Describe the TCP/IP connection process?
- When and why would one use a TCP over UDP?
- Data transfer between 2 hosts is extremely slow. How can you troubleshoot?
- 

### :small_blue_diamond: Git

- What is Git?
- Difference between Git and SVN?
- What is the basic Git workflow?
- Difference between git pull and Git fetch
- What is git cherry-pick?
- What is the HEAD in Git ?
- When do I use Git stash?
- What does git reset do?
- What is Git fork? What is difference between git fork, clone and branch?
- What is difference between `git stash pop` and `git stash apply`?

Advanced:
- I need to update my local repos, what commands do I use ?
- I need to rollback to a previous commit and I don't need my recent changes, what do I use ?
- How can I amend an older commit?
- What is the command to check the difference between two commits?
- When do you use `git rebase` instead of `git merge`?
- Do you know how to undo a git rebase?
- 

### :small_blue_diamond: AWS

-----General--------
- What is AWS? 
- What are two services of AWS where you could store secrets?
- What is the relation between the Availability Zone and Region?
- What is auto-scaling?
- What services can help minimise a DDoS attack?
- What is an AMI?
- What are different types of load balancers?

-----Networking-----
- What is a VPC?
- How do Subnets work?
- What network object do you need to allow a server ingress from the internet?
- What are the different type of load balancers in AWS?
- Whate are subnets? and what are CIDRs?
- How can your resources in the VPC get access to the internet?


-----Scenario-based-----
- I want to create a 3 Tier Architecture. Can you explain step by step of how I can go about this?
- In VPC with private and public subnets, database servers should ideally be launched into which subnet?
- What are some security best pracites for EC2s?
- I created a web application with autoscaling. I observed that the traffic on my application is the highest on Wednesdays and Fridays between 9 AM and 7 PM. What would be the best solution for me to handle the scaling?
- You have an application running on your Amazon EC2 instance. You want to reduce the load on your instance as soon as the CPU utilization reaches 100 percent. How will you do that?


-----Others-----
- Name some managed runtimes for Lambda

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
- Explain what is the difference between Block Blobs, Append Blobs and Page Blobs in Azure?

Advanced:

- What to use: many small Azure Storage Blob containers vs one really large container with tons of blobs?


### :small_blue_diamond: Terraform

- What is IaC? What is Terraform?
- What is Terraform state
- What are most common Terraform commands?
- What is Terraform backend?
- What are modules in Terraform?
- What is Terragrunt?
- Explain the workflow of the core Terraform?
- Difference between Terraform, AWS CloudFormation and Azure ARM?
- What is the difference between Terraform and Ansible?
- What are provisioners in Terraform?
- How can two people using the Terraform cloud can create two different sets of infrastructure using the same working directory?
- What is a null resource in Terraform?
- Which command is used to perform syntax validation on terraform configuration files?
- How can I format my current directory of Terraform config files in the HCP format?



Advanced:
- I have 3 people in my team who want to work on the same AWS Infrastructure on Terraform as well as same state. What can I do to ensure there are no clashes?
- In a pipeline, where would you store the Terraform state?
- Can I test my terraform modules? If so, how can I test them? Is there a common framework used to Terraform modules?
- How does state file locking work?
- What is Checkov?
- How can I use Terraform in a pipeline?
- How can one export data from one module to another?
- How can you import existing resources under Terraform management?
- Which command can be used to reconcile the Terraform state with the actual real-world infrastructure?

### :small_blue_diamond: Docker & K8s


Container (Docker):
- What is a container and what are its fundamentals?
- What are c-groups and namespaces in Linux?
- What is Docker and how does it work?
- When do I use Docker Compose vs Docker Swarm and K8s?
- What is a Dockerfile used for?
- Can you explain the basic components of a Dockerfile?
    - What is a FROM in a Dockerfile used for?
    - What is a COPY in a Dockerfile used for?
    - What is a ADD in a Dockerfile used for?
    - What is a CMD & ENTRTPOINT in a Dockerfile used for?
- How is a container different from a virtual machine?
- How can I run a container?
- How can I stop and remove a container?
- How can I attach a shell to a terminal of a running container?
- What is a dangling image?
- What is Docker compose and when is it used?
- 

Advanced:
- What is the difference between COPY and ADD commands in a Dockerfile?
- What is the difference between CMD and RUN commands in a Dockerfile?
- What are some best practices to follow when running containers in production?

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

### :small_blue_diamond: Ansible

- What is Ansible? 
- How does Ansible work?
- What is Ansible Galaxy?
- What are Ansible handlers?
- What is Ansible Vault?
- What aer Ansible collections?
- How do you get a list of Ansible predefined variables?
- How is Ansible playbook different from ad-hoc commands?
- What is the recommended for securing secret information used within Ansible playbooks?
- What templating language is directly supported within Ansible for creating dynamic playbooks?
- What protocol does Ansible use for communicating with client systems?
- What is an inventory file?


Advanced:

- Can you name some Ansible best practices? 
- How do you handle errors in Ansible?
- How do you test your Ansible roles and tasks?
- What is Molecule and how does it works?

### :small_blue_diamond: CI/CD

- 

### :small_blue_diamond: DevOps methodology, practices,  & Agile

- What is meant by continuous integratons?
- What are the advantages of DevOps?
- Can you describe some branching strategies you have used?
- What is the blue/green deployment pattern?


## System Design

### :small_blue_diamond: CDN & Caching

- What is a CDN and why would I use one?
- What are CDN edge servers?
- How does CDN caching work?
- What is cache invalidation? 
- What are some cache invalidation methods?
- What is a cache Hit?
- What is a cache Miss?
- Can you explain a caching workflow?


----

- What is the CAP Theorem?
- Explain the difference between horizontal scaling and vertical scaling?
- Difference between forward proxy and reverse proxy?
- What is Load Balancing and how does it work? How does it relate to reverse proxies?
- Name me some common load balancers
- What is a microservice architecture and when would I consider using one?


### :small_blue_diamond: Databases

- What is a database?
- What is DBMS (Database Management System)?
- What is the schema referred to in a Database?
- What are different types of databases?
- Advantages & Disadvantages of using relational databases?
- Advantages & Disadvantages of using NoSQL relational databases?
- What is a key-value database? What are some examples of this?
- What are graph databases? Name some examples?
- What is database replication?
- What is master-slave replication? And what is master-master replication?
- What is Synchronous vs Asynchronous replication?
- What are indexes in databases?
- How can one improve query performance by using index hunting?
- What do you understand by ‘Atomicity’ and ‘Aggregation’?
- What is database partitioning?
- 


Advanced:

- What are message queues? And what are message brokers?
- How does the publish-subscribe model work?
- Can you explain how an event-driven architecture works?
- What is an API Gateway? How is this different from load balancers?
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

- 

### :small_blue_diamond: Java

- 

### :small_blue_diamond: JavaScript (TS,nodeJS...)

- 


## Data

### Data Modelling and Schemas: 

- Define data modelling and the benefits of implementing a data model? 
- What are some of the design schemas used when performing data modelling? 
- What are the three types of data models? 
- What is a table (entity) and column (attribute)? 
- What is normalisation/denormalisation and what is its purpose?
- What are the main relationships which can be found in a data model? (name 3)
- Explain the two different types of design schemas (snowflake and star)? 
- What is a data mart? 
- How would you describe granularity? 
- How does data sparcity impact aggregation of data sets/sources? 
- In the context of data modelling, what is the importance of metadata? How would you describe the role of metadata in data modelling? 
- What is a DDL script? 
- What is a fact and dimension? 
- What is an ERD? Entity relationship diagram
- What are the differences between foreign and surrogate keys? 
- Desribe cardinality

### Data Architect

- Please state an example of designing, creating, deploying and managing an end to end data architecture project?
- What are the fundamental skills required for a data architect? 
- What is a data block and a data file? 
- What is data warehousing? 
- What are the main differences between 'a view' and 'a materialised view'? 
- What is a junk dimension? 
- Please explain in detail data warehousing architecture
- What are the different types of integrity constraints? 
- Why do data architects enforce and monitor data compliance standards in data systems? 
- Differentiate between OTLP and OLAP
- How do you design and implement a data warehouse? 
- How do you handle data quality issues? 
- How do you optimise data models for performance? 
- Describe your familiarity with big data technologies such as Hadoop and Spark
- How do you go about gathering requirements for a new data project? 
- How do you hamdle conflicting priorities when working on multiple projects? 
- Which software and design patterns are you familiar with? 

### Data Engineering

- What made you choose data engineering and what does it mean to you? 
- How would you define data engineering? 
- What are data engineers responsible for? 
- What is the difference between a data architect and a data engineer? 
- What is the difference between structured ,semi structured and unstructured data? 
- Describe differences between a data warehouse and an operational database
- How would you increase the revenue of a business using data analytics and big data? 
- What are the advantages of using skewed tables in hive? 
- Explain the hive data model and its components
- What does COSHH/FSCK mean? 
- Why is using a distributed system important in hadoop? 
- Name the core features of hadoop
- Define hadoop streaming
- What is data locality? 
- What does Context object do in Hadoop and why is it important? 
- Name the three reducer phases in hadoop
- What do args and kwargs commands do? 
- List the differences between tuples and lists
- What are the advantages of working with big data on the cloud? 
- Can you describe what happens when a data block is corrupted? 
- How would you explain file permissions in hadoop? 
- Which process would you follow to add a node to a cluster? 
- Can you list python libraries which can facilitate efficient data processing?
- What challenges came up during your recent project, and how did you overcome these challenges?
- Have you ever transformed unstructured data into structured data? and how did you do it? 
- Can you tell me about NameNode? What happens if NameNode crashes or comes to an end?
- How to achieve security in Hadoop?
- What is FIFO Scheduling? 

### SQL

- How can you deal with duplicate data points in an SQL query?
- List objects that are created via the CREATE statement in SQL
- How would you see the database structure in SQL? 
- How would you search for a specific string in a column? 
- What are the differences between DDL, DML and DCL?
- Difference between SQL and MySQL? 
- How is a RDBMS different to a DBMS? 
- What is a self join? name other join commands
- What is the SELECT statement? 
- What are the CRUD commands? 
- What are UNION, MINUS and INTERSECT commands? 
- List the type of relationships in SQL
- How would you load data into tables using SQL? 
- What is PostgreSQL?
- Explain the character manipulation functions in SQL
- What is the difference between RANK and DENSE_RANK() functions? 
- What are tables and fields? 
- What is a schema in a SQL server? 
- How would you create a table with 4 columns? 
- What is a CASE statment? 
- Summarise differences between SQL and NoSQL
- Difference between NOW() and CURRENT_DATE()
- What is a BLOB and TEXT in MySQL?
- How do you remove duplicate rows in SQL? 
- How do you create a stored in procedure in SQL?
- What is the difference between CHAR, VARCHAR datatypes in SQL? 
- What are constraints in SQL? 
- Differences in DELETE and TRUNCATE statements? 
- What is data integrity? 
- What do you understand by query optimisation? 
- What are entities and relationships? 
- Name some aggregate functions which are commonly used in SQL
- What are the syntax and use of the COALESCE function?
- What is the ACID property in a database?
- What is a “Trigger” in SQL?
- What is a subquery in SQL?
- What is a CLAUSE in SQL?
- What is the need for a MERGE statement?
- How can you fetch common records from two tables?
- What are aggregate and scalar functions?
- What are Views used for?
- What are Local and Global variables?


### ETL & Data Pipelines & more

- How would I go about troubleshooting pipelines?



## Machine Learning

- 


## Cyber Security & Info Security

- 


## References:

- intellipaat.com
- Add more links to any references.

## License

This project is licensed under the Apache License. See the [LICENSE](LICENSE) file for more details.
