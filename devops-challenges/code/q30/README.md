# DevOps Challenge q30 - Network Automation with GitHub Actions and Ansible

## Prerequisites

- Ansible installed on your local machine
- Networking devices (routers, switches, etc.) that Ansible can connect to

## Inventory Setup: Update the inventory.ini with the details of your network devices.

- Ansible Playbooks: Customize the Ansible playbooks as per your network requirements.

- Push to GitHub: Push your changes to GitHub.

- After pushing the code to GitHub, the GitHub Actions workflow specified in .github/workflows/ansible.yml will automatically run.

```bash
[routers]
192.168.1.1

[switches]
192.168.1.2


```

## Directory Structure:

```bash
network-automation-project/
├── ansible.cfg
├── inventory.ini
└── playbooks/
    ├── backup_config.yml
    ├── set_vlan.yml
    ├── set_ospf.yml
    └── set_acl.yml

```


