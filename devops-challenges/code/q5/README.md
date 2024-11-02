## 5. Service roles in K8s

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
