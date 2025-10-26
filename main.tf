#############################
# Keycloak Demo Setup
# This file defines the base realm.
# Other resources (users, groups, etc.)
# are split into separate .tf files.
#############################

resource "keycloak_realm" "demo_realm" {
  realm               = "demo-realm"
  enabled             = true
  display_name        = "Demo Realm"
  display_name_html   = "<strong>Demo Realm</strong>"
  login_with_email_allowed = true
  registration_allowed     = false
  remember_me               = true
  verify_email              = false
}
