terraform {
  required_providers {
    keycloak = {
      source  = "mrparkers/keycloak"
      version = "~> 4.2"
    }
  }
}

provider "keycloak" {
  client_id     = "admin-cli"
  username      = "user"
  password      = "uBFE6cxs3m"
  url           = "http://localhost:8082"
  realm         = "master"
}
