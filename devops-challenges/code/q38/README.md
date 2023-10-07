# Secure Access to Production Systems

## Setting Up

1. Install Ansible on your machine.
2. Update `production_inventory.ini` with your Jump Host and Production Server IPs.
3. Update variables for authorized users and keys as needed in role variables.

## How to Run

1. Navigate to the `ansible` directory.
2. Run the Ansible playbook:
    ```
    ansible-playbook -i production_inventory.ini main_playbook.yml
    ```
3. SSH into the jump host to verify if the setup is working:
    ```
    ssh your_user@jump_host_ip
    ```

## How to Verify

1. SSH into the Jump Host, and then SSH into one of the production servers.
2. Verify that only authorized keys can access the production servers.
3. Check the jump host to ensure that only essential services are running.

