[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

# Tech Vault Interview Questions Bank

<p align="center">
  <img width="300" src="./images/Tech-Vault.png">
</p>


Note: A documentation of carefully curated technical engineering questions by experienced Engineers who have conducted many interviews. These are amongst popular and important engineering questions to test knowledge of candidates in interviews. 

Any questions taken from external references are referenced [below](#references). 

## Table of Contents

- [X] [Vision 🚀](#vision)
- [X] [What is different in this repo compared to others? 🌟](#what-is-different-in-this-repo-compared-to-others)
- [X] [Contributing 🖊️](#contributing)
- [X] [DevOps 🛠](#devops)
    - [Linux 🐧](#small_blue_diamond-linux)
    - [Networking 🌐](#small_blue_diamond-networking)
    - [Git](#small_blue_diamond-git)
    - [AWS 🌩️](#small_blue_diamond-aws)
    - [Azure 🌩️](#small_blue_diamond-azure)
    - [Terraform 🏗️](#small_blue_diamond-terraform)
    - [Docker & K8s 🐳 🎻](#small_blue_diamond-docker--k8s)
    - [Ansible 🔧](#small_blue_diamond-ansible)
    - [CI/CD 🛠️](#small_blue_diamond-cicd)
    - [DevOps methodology, practices, & Agile](#small_blue_diamond-devops-methodology-practices--agile)
- [X] [System Design 🍥](#system-design)
    - [CDN & Caching ⚡](#small_blue_diamond-cdn--caching)
    - [Databases 📊](#small_blue_diamond-databases)
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
- [X] [Machine Learning 🤖](#machine-learning)
- [X] [Cyber Security & InfoSecurity 🛡️](#cyber-security--info-security)
- [X] [Interpersonal skills](#interpersonal--behavioural-questions)
- [X] [References](#references)

## Vision

- Coming from a non-technical background and without experience can be difficult for many. So I and my team have decided to create this project where all, non-technical and technical tech professionals, can have a place of reference to technical interview questions and interview prep. This is maintained by a lovely community. If you wish to contribute, feel free to do so. Read this for more info >> [How to Contribute](#contributing) 

## What is different in this repo compared to others?

1️⃣ Real questions asked by and of our Engineers (obviously reworded questions)

2️⃣ Scenario-based questions mirroring actual interviews

3️⃣ Up-to-date and relevant topics

4️⃣ Ongoing updates by experienced Engineers in their fields.

## Contributing 🖊️

- To contribute, please read our [Contributing Guidelines](CONTRIBUTING.md). For any fixes, updates or new additions, please make a pull-request (PR). Thank you!

## DevOps 🛠

### :small_blue_diamond: Linux

- What is Linux and difference between UNIX and Linux?
    <details>
    <summary>Click to view the answer</summary>
    
    Linux is an open-source operating system based on the UNIX architecture. It was created by Linus Torvalds in 1991. UNIX, on the other hand, is a family of operating systems that was developed in the late 1960s at Bell Labs. The main differences between UNIX and Linux are:

    - **License:** UNIX is proprietary, while Linux is open-source and free to use.
    - **Development:** UNIX is developed by a few organizations (like IBM, Sun Microsystems, and HP), while Linux has a widespread community-driven development process.
    - **Portability:** Linux is more portable and can be used on a wide range of hardware, whereas UNIX is limited to specific hardware platforms.
    - **User base:** Linux has a broader user base, including personal computers, servers, and embedded systems, while UNIX is primarily used in enterprise environments.
    
    </details>
---
- What is the Linux kernel?

    <details>
    <summary>Click here to view answer</summary>
    
    The Linux kernel is the core component of the Linux operating system. It is responsible for managing the system's resources, providing an interface between hardware and software, and facilitating essential tasks such as memory management, process scheduling, and input/output (I/O) operations.
    
    </details>

- What are inodes in Linux?

    <details>
    <summary>Click here to view answer</summary>
    
    Inodes in Linux are data structures that store important information about files on a file system. Each file or directory in a Linux file system has an associated inode that contains metadata such as the file's size, permissions, ownership, timestamps, and the location of the file's data blocks on the disk.

    When you create a file or directory, the file system assigns a unique inode number to it. The inode number serves as an identifier for the file, allowing the file system to access the inode's information and manage the file accordingly.

    Here's a summary of what inodes store:

    File type (regular file, directory, symbolic link, etc.)
    File permissions (read, write, execute)
    Ownership (user and group)
    Timestamps (creation, modification, and access times)
    File size
    Number of hard links to the file
    Location of the file's data blocks on the disk
    It's important to note that inodes don't store the file's name or the actual file data. The file name is stored in the directory that contains the file, which associates the name with the inode number. The actual file data is stored in separate data blocks on the disk, and the inode points to these blocks.

    Inodes play a crucial role in managing files and directories within a Linux file system, providing an efficient way to access and manipulate file metadata.
    
    </details>

- Explain the Linux boot process

    <details>
    <summary>Click here to view answer</summary>
    
    The Linux boot process consists of several stages that initialize the system and load the operating system. Here's a brief overview of the key steps:

    BIOS/UEFI: When the computer is powered on, the BIOS (Basic Input/Output System) or UEFI (Unified Extensible Firmware Interface) performs initial hardware checks and locates the boot device.

    Bootloader: The bootloader (e.g., GRUB) loads from the boot device and presents the available operating systems to the user. It then loads the Linux kernel and initial RAM disk (initrd) into memory.

    Kernel initialization: The Linux kernel initializes hardware, sets up memory management, starts essential processes, and mounts the initial RAM disk, which contains essential drivers and tools needed during the boot process.

    Root file system: The kernel switches the root file system from the initial RAM disk to the actual root partition on the disk, typically identified by its UUID or device name (e.g., /dev/sda1).

    Init process: The first user-space process, called init (e.g., Systemd, SysVinit, or Upstart), starts and manages system services and processes during the boot process and the system's runtime.

    Runlevel/target: Init process initializes the predefined runlevel (SysVinit) or target (Systemd), which determines the services and processes to run at startup.

    Login prompt: Once all services and processes specified in the runlevel/target have started, the system displays a login prompt, indicating that the boot process is complete and the system is ready for use.
    
    </details>

- What is a zombie process?
    <details>
    <summary>Click here to view answer</summary>
    
    A zombie process, also known as a defunct process, is a process that has completed its execution but still remains in the process table. This happens because the parent process has not yet read the child process's exit status, which is required to clean up the child process's resources and remove its entry from the process table.

    Zombie processes don't consume any system resources, except for the process table entry, which includes the process ID (PID) and the exit status. The operating system keeps this information so that the parent process can eventually retrieve the exit status and perform the necessary clean-up.

    More info on zombie processes below:

    Typically, a well-behaved parent process will use the wait() or waitpid() system call to collect the exit status of its child processes. However, if the parent process doesn't do this, either due to a programming error or because the parent is still running and hasn't reached the point where it collects the exit status, the child process becomes a zombie.

    Zombie processes are usually harmless, but if a system accumulates a large number of them, it could exhaust the available PIDs and prevent new processes from being created. To resolve this issue, the parent process should be fixed to correctly handle its child processes' exit status, or if the parent process is unresponsive or terminated, a system reboot might be necessary.
    
    </details>

- Difference between soft links and hardlinks?

    <details>
    <summary>Click here to view answer</summary>
    
    Soft links and hard links are two types of file links in a Unix-like file system, such as Linux. They serve different purposes and have distinct characteristics:

    **Soft Link (Symbolic Link):**

    - A soft link is a separate file that points to the target file or directory by storing its path.
    - If the target file is deleted, the soft link becomes a "dangling" link, pointing to a nonexistent file.
    - Soft links can span across different file systems and partitions.
    - Soft links can link to directories as well as files.
    - When a soft link is created, the link count of the target file doesn't change.
    - Soft links have different inode numbers than their target files.
    
    **Hard Link:**

    - A hard link is a direct reference to the data on the disk, sharing the same inode as the target file.
    - If the target file is deleted, the hard link still points to the data, and the data remains accessible until all hard links to it are removed.
    - Hard links can only be created within the same file system or partition.
    - Hard links cannot link to directories, only to files.
    - When a hard link is created, the link count of the target file increases by one.
    - Hard links have the same inode numbers as their target files.

    In summary, a soft link is a more flexible but less reliable type of link that can point to files or directories across file systems, while a hard link is a more robust link that directly references the file's data, but is limited to the same file system and cannot link to directories.
    
    </details>

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

### :small_blue_diamond: 

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

- What is TypeScript?
- What are the differences between TypeScript and JavaScript?
- Why use TypeScript?
- What are the advantages of TypeScript?
- What are Types in TypeScript?
- What are Type Assertions in TypeScript?
- What are the Primitive data types?
- What are the special data types in TypeScript?
- What are interfaces in TypeScript?
- Interfaces Vs Types?


## Data

### Data Modelling and Schemas: 

- Define data modelling and the benefits of implementing a data model? 

    <details>
    <summary>Click here to view answer</summary>
    
    Answer: Data modeling is the process of creating a visual representation of either a whole information system or parts of it to communicate connections between data. Data modeling concepts create a blueprint for how data is organized and managed in your organization. Data models give developers and non-technical stakeholders a simplified way to have meaningful conversations about the needs of the business and how data insights can fuel better decision making.
    
    </details>


- What are some of the design schemas used when performing data modelling? 

Answer: Star Schema. Snowflake Schema. Galaxy Schema.

- What are the three types of data models? 

Answer: Entity models, relational and dimensional

- What is a table (entity) and column (attribute)? 

Answer: A row in a database table is an entity. A column header of a database table is an attribute. 

- What is normalisation/denormalisation and what is its purpose?

Answer: Normalization is the technique of dividing the data into multiple tables to reduce data redundancy and inconsistency and to achieve data integrity. On the other hand, Denormalization is the technique of combining the data into a single table to make data retrieval faster.

- What are the main relationships which can be found in a data model? (name 3)

Answer: one to one, one to many and many to many

- Explain the two different types of design schemas (snowflake and star)? 

Answer: Snowflake and star are two different types of design schemas used in data warehousing. In a snowflake schema, the data is organized into a hierarchy of tables, with each table having multiple child tables. In a star schema, the data is organized into a central fact table and several dimension tables that connect to it.

- What is a data mart? 

Answer: A data mart is a subset of a larger data warehouse that is designed to serve a specific business function or department. It contains a smaller subset of the data found in the overall data warehouse. 

- How would you describe granularity? 

Answer: Granularity refers to the level of detail or specificity of data. It describes how finely the data is divided and recorded.

- How does data sparcity impact aggregation of data sets/sources? 

Answer: Data sparcity can impact the aggregation of data sets/sources by making it more difficult to obtain accurate and meaningful results. Sparse data can result in incomplete or inaccurate analyses, as well as a loss of insights and trends.

- In the context of data modelling, what is the importance of metadata? How would you describe the role of metadata in data modelling? 

Answer: Metadata is important in data modelling because it provides additional information about the data being modelled. It helps to document the structure and relationships of the data, as well as its origin, quality, and meaning.

- What is a DDL script? 

Answer: A DDL (Data Definition Language) script is a set of commands used to create, modify, or delete database objects such as tables, indexes, or views.

- What is a fact and dimension? 

Answer: In a data model, a fact is a measurable event or transaction, while a dimension is a descriptive attribute of that event or transaction. For example, in a sales data model, a fact might be the quantity of a product sold, while dimensions could include attributes such as the date of the sale, the customer who made the purchase, or the location where the sale occurred.

- What is an ERD? Entity relationship diagram?

Answer: An ERD (Entity Relationship Diagram) is a visual representation of the relationships between entities (tables) in a database. It shows how the tables are related to each other and the nature of those relationships.

- What are the differences between foreign and surrogate keys? 

Answer: Foreign keys are columns in a table that reference the primary key of another table. Surrogate keys are artificial primary keys that are created specifically for use in a database and have no inherent meaning outside of that context.

- Desribe cardinality

Answer: Cardinality refers to the number of relationships between entities in a data model. It describes how many instances of one entity can be related to another entity. Common cardinalities include one-to-one, one-to-many, and many-to-many.

### Data Architect

- Please state an example of designing, creating, deploying and managing an end to end data architecture project?

Answer: A company wants to implement a customer relationship management (CRM) system. The project would involve designing a data architecture to store customer data, creating the necessary databases and tables, and deploying the system. The data would need to be cleansed, transformed, and loaded into the new system. Ongoing management would involve monitoring the data for quality and making any necessary updates or modifications to the system.

- What are the fundamental skills required for a data architect? 

Answer: Strong knowledge of data modelling and database design
Expertise in database management systems (DBMS) and database administration
Experience with data warehousing and business intelligence
Proficiency in data integration, ETL (extract, transform, load) processes, and data migration
Familiarity with programming languages and software development methodologies
Excellent analytical and problem-solving skills
Strong communication and collaboration abilities

- What is a data block and a data file? 

Answer: A data block is the smallest unit of data that can be accessed or transferred from a database to memory. A data file is a physical storage unit used to store data in a database.

- What is data warehousing? 

Answer: Data warehousing is the process of collecting, storing, and managing large amounts of data from various sources to support business intelligence and decision-making. It involves organizing the data into a centralized repository or data warehouse, where it can be queried and analyzed using business intelligence tools.

- What are the main differences between 'a view' and 'a materialised view'? 

Answer: A view is a virtual table that is based on a select statement and does not store data. A materialized view, on the other hand, is a physical copy of a view that stores data in a table, making it faster to retrieve.

- What is a junk dimension?

Answer: A junk dimension is a single table that contains several low-cardinality attributes that are not related to any specific dimension. It is used to reduce the number of dimension tables in a data warehouse and simplify the schema design.

- Please explain in detail data warehousing architecture

Answer: 
The source layer, where data is collected from various sources and stored in staging tables.
The integration layer, where data is cleansed, transformed, and combined into a single format for loading into the data warehouse.
The storage layer, where the data is stored in a central repository or data warehouse.
The access layer, where business intelligence tools and applications can retrieve the data for analysis and reporting.

- What are the different types of integrity constraints? 

Answer: 
Entity integrity: ensures that each row in a table has a unique identifier.
Referential integrity: ensures that relationships between tables are maintained and that foreign keys reference primary keys.
Domain integrity: ensures that data values meet specific constraints, such as data type or format requirements.
User-defined integrity: allows users to define their own constraints based on specific business rules or requirements.

- Why do data architects enforce and monitor data compliance standards in data systems? 

Answer: Data architects enforce and monitor data compliance standards in data systems to ensure that data is accurate, complete, and secure. This helps to maintain data quality and prevent data breaches or other security risks.

- Differentiate between OTLP and OLAP

Answer: OLTP (Online Transaction Processing) systems are designed for real-time transactional processing and are typically used for day-to-day business operations. OLAP (Online Analytical Processing) systems are designed for data analysis and reporting and are typically used for business intelligence and decision-making.

- How do you design and implement a data warehouse? 

Answer: 
Analyze business requirements and identify data sources.
Develop a conceptual data model and logical data model.
Design the physical data model and schema.
Develop ETL processes to extract, transform, and load data into the warehouse.
Implement the database and BI tools.
Test and validate the system.
Deploy and maintain the system.

- How do you handle data quality issues? 

Answer: To handle data quality issues, data architects can implement data profiling and data cleansing processes. Data profiling involves analyzing the data to identify any issues or inconsistencies, such as missing or duplicate data, incorrect data types, or invalid values. Data cleansing involves correcting these issues and ensuring that the data is accurate and complete.

- How do you optimise data models for performance? 

Answer: 
Normalize the data to reduce redundancy and improve consistency.
Denormalize the data to improve query performance and simplify the schema.
Partition large tables to improve query performance.
Use appropriate indexing to speed up queries.
Optimize queries to reduce the amount of data that needs to be processed.

- Describe your familiarity with big data technologies such as Hadoop and Spark

Answer: 
Hadoop is an open-source software framework that is used to store and process big data in a distributed computing environment. It uses a file system called Hadoop Distributed File System (HDFS) to store data across multiple machines and a processing engine called MapReduce to distribute processing tasks across the cluster. Hadoop is particularly useful for handling unstructured and semi-structured data, such as log files, social media data, and sensor data.

Spark is another open-source software framework that is designed to handle big data processing tasks in real-time. Spark is built on top of Hadoop and provides a more flexible and efficient processing engine than MapReduce. It supports various data processing tasks, including batch processing, stream processing, machine learning, and graph processing. Spark is particularly useful for handling large datasets that require real-time analysis, such as financial trading data, social media data, and sensor data.

- How do you go about gathering requirements for a new data project? 

Answer: 
Meet with stakeholders to understand their business needs and goals.
Identify the data sources and types of data that will be needed.
Develop a data model based on the business requirements.
Define the data quality and security requirements.
Determine the performance and scalability requirements.
Establish a project timeline and budget.

- How do you hamdle conflicting priorities when working on multiple projects? 

Answer: To handle conflicting priorities when working on multiple projects, data architects can prioritize based on business impact, urgency, and feasibility. Communication with stakeholders and project managers can also help to ensure that expectations are clear and aligned.

- Which software and design patterns are you familiar with? 

Answer: 
Relational database management systems (RDBMS) such as Oracle and SQL Server.
NoSQL databases such as MongoDB and Cassandra.
Data integration tools such as Informatica and Talend.
Data visualization and business intelligence tools such as Tableau and Power BI.
Design patterns such as the star schema and snowflake schema for data warehousing.

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

## Interpersonal & behavioural questions


## References:

- intellipaat.com
- Add more links to any references.

## Charity 
- Since this is a community-based project and it is run by the community - we (the creators) do not gain any personal nor financial gain other than helping the community. Instead, any financial gain would be better suited to a charity. So we wanted to take it upon us to help those in need. We, as a community, have chosen a certified charity to donate to. Here is the link to donate to:
    - To ADD charity donation links here.

## License

This project is licensed under the Apache License. See the [LICENSE](LICENSE) file for more details.
