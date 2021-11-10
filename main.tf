terraform {
  backend "remote" {
    organization = "getsysadmin"
    workspaces {
      name = "hashitalks-latam"
    }
  }
  required_providers {
    heroku = {
      source = "heroku/heroku"
      version = "4.6.0"
    }
  }
}
