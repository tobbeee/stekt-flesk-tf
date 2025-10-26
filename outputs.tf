output "realm_name" {
  value = keycloak_realm.demo_realm.realm
}

output "users" {
  value = {
    alice = keycloak_user.alice.username
    bob   = keycloak_user.bob.username
  }
}

output "groups" {
  value = {
    developers = keycloak_group.developers.name
    admins     = keycloak_group.admins.name
  }
}
