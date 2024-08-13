#!/bin/sh

# Set Vault address and token
VAULT_ADDR=http://0.0.0.0:8200
VAULT_TOKEN=hvs.kyNrq4xnGRQj5pnm2tqsovH3

# Fetch credentials from Vault
username=$(vault kv get -field=username secret/data/myapp)
password=$(vault kv get -field=password secret/data/myapp)

# Print credentials
echo "Username: $username"
echo "Password: $password"
