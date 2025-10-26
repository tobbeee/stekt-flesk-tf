terraform {
  required_providers {
    keycloak = {
      source  = "keycloak/keycloak"
      version = "5.5.0"
    }
  }
}

provider "keycloak" {
  url       = "http://localhost:8082"
  realm     = "master"
  client_id = "admin-cli"
  username  = "user"
  password  = "uBFE6cxs3m"
}
