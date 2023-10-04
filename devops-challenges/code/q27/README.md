# DevOps Challenge q27

## Solution

- Chaos Monkey Installation: You could use a tool like Chaos Monkey to introduce failures in your system. Assume it's installed in an AWS EC2 instance.

- Configuration: Configure Chaos Monkey to randomly terminate instances in a specified Auto Scaling Group.

- Monitoring: Set up basic monitoring using CloudWatch to check how the system reacts when Chaos Monkey introduces failures.
