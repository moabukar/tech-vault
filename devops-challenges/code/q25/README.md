# Secrets Management with HashiCorp Vault


# Secrets Management with Vault

## Steps to Setup Vault

1. Start Vault in dev mode: `vault server -dev`
2. Initialize Vault: `vault operator init`
3. Unseal Vault: `vault operator unseal`

## Steps to Create Policy and Role

1. Initialize Terraform: `terraform init`
2. Apply Terraform: `terraform apply`

## Steps to Fetch Secret

Run the `fetch_secret.sh` script to fetch the secret.


```sh
Setting up Vault (dev mode for simplicity):

vault server -dev

vault kv put secret/my_secret value="supersecret"


```
