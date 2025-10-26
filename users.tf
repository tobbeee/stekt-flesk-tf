resource "keycloak_user" "alice" {
  realm_id  = keycloak_realm.demo_realm.id
  username  = "alice"
  enabled   = true
  email     = "alice@example.com"
  first_name = "Alice"
  last_name  = "Doe"

  initial_password {
    value     = "AlicePassword123!"
    temporary = false
  }
}

resource "keycloak_user" "bob" {
  realm_id  = keycloak_realm.demo_realm.id
  username  = "bob"
  enabled   = true
  email     = "bob@example.com"
  first_name = "Bob"
  last_name  = "Smith"

  initial_password {
    value     = "BobPassword123!"
    temporary = true
  }
}

# Assign users to groups
resource "keycloak_user_groups" "alice_membership" {
  realm_id = keycloak_realm.demo_realm.id
  user_id  = keycloak_user.alice.id
  group_ids = [keycloak_group.developers.id]
}

resource "keycloak_user_groups" "bob_membership" {
  realm_id = keycloak_realm.demo_realm.id
  user_id  = keycloak_user.bob.id
  group_ids = [keycloak_group.admins.id]
}
