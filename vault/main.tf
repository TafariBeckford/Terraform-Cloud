provider "vault" {
address = "http://127.0.0.1:8200"
token = "hvs.pzPoxG9ry3x9S2SvSCqPtP1r"
}

data "vault_generic_secret" "phone_number" {
path = "secret/app"
}

output "phone_number" {
    sensitive = true
value = data.vault_generic_secret.phone_number
}