# DevOps Challenge q33 - Ansible Advanced

# Runbook for XYZ Infrastructure Playbook

## Pre-requisites

- Make sure Ansible is installed on the control node.
- Make sure all target nodes are accessible from the control node via SSH.
- Have AWS CLI installed and properly configured if you're deploying to AWS.
- Your `inventory.ini` should be updated with the IPs of your servers.

## Steps to Run the Playbook

### 1. Navigate to Your Project Directory

Open a terminal and navigate to the directory where your Ansible project is located.

```bash
cd /path/to/ansible_project
```

## Test Ansible Host Communication

```bash
ansible all -m ping
```

## Execute the Playbook

```bash
ansible-playbook -i inventory.ini main.yml
```

If you want to run the playbook only on a specific set of hosts, you can do so with this command:

```bash
ansible-playbook --limit app_servers main.yml
```

## 4. Verify Configuration

- For HAProxy: Check the status by visiting http://your_load_balancer_ip/haproxy?stats
- For App Servers: Check the generated config file /path/to/app/config.js
- For DB Servers: Log in to MySQL and check if the settings are applied.
