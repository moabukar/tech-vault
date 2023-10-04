provider "vault" {}

resource "vault_policy" "my_policy" {
  name   = "my_policy"
  policy = file("my_policy.hcl")
}

resource "vault_auth_backend" "approle" {
  type = "approle"
}

resource "vault_auth_backend_role" "my_role" {
  backend = vault_auth_backend.approle.path
  role_name = "my_role"
  policies = [vault_policy.my_policy.name]
}
