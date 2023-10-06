# Bash Automation Script for Software Installation

This is a Bash script to automate the installation of MySQL, PostgreSQL, Nginx, and Apache on an Ubuntu machine.

## Setup

1. Clone this repository or download the `automate.sh` script.

2. Give execute permission to the script:

```bash
chmod +x automate.sh
```

## How to Run

1. Run the script with sudo permissions:

```bash
sudo ./automate.sh
```

2. Follow the interactive prompts to choose which software to install.

## Verifying Installation

You can use the following commands to check the status of the services:

- MySQL: `systemctl status mysql`
- PostgreSQL: `systemctl status postgresql`
- Nginx: `systemctl status nginx`
- Apache: `systemctl status apache2`

## Log File

The actions, errors, and user inputs are logged into `automate.log` with timestamps.

## Note

Make sure to run the script only on an Ubuntu machine.
