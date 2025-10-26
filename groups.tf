resource "keycloak_group" "developers" {
  realm_id = keycloak_realm.demo_realm.id
  name     = "developers"
}

resource "keycloak_group" "admins" {
  realm_id = keycloak_realm.demo_realm.id
  name     = "admins"
}
