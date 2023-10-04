#!/bin/bash

# Fetch role_id and secret_id from Vault (these commands should be adapted to your environment)
role_id=$(vault read -field=role_id auth/approle/role/my_role/role-id)
secret_id=$(vault write -f -field=secret_id auth/approle/role/my_role/secret-id)

# Log in to Vault and get a token
vault_token=$(vault write -field=token auth/approle/login role_id="$role_id" secret_id="$secret_id")

# Use the token to read the secret
vault read -field=value -token="$vault_token" secret/my_secret
