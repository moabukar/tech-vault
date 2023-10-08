# Advanced Ansible Project with Molecule Testing

## Setup and Pre-requisites

1. Install Ansible and Molecule.

```bash
pip install ansible molecule docker
```

2. Clone this repository.

```bash
git clone https://github.com/your-github/advanced-ansible-molecule.git
```

## How to Run

1. Run the Ansible playbook.

```bash
ansible-playbook webserver-playbook.yml
```

2. To test the role using Molecule, navigate to the role directory.

```bash
cd roles/webserver
```

3. Run the Molecule tests.

```bash
molecule test
```

## Important Notes

- Make sure to replace the IP address in the `inventory.ini` file with the IP of your test server.
- The Molecule tests will run on a Docker container.
