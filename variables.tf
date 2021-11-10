provider "heroku" {
  email   = var.HEROKU_EMAIL
  api_key = var.HEROKU_API_KEY
}

provider "herokux" {
  api_key = var.HEROKU_API_KEY
}

variable "HEROKU_EMAIL" {}
variable "HEROKU_API_KEY" {}
variable "HEROKU_ORGANIZATION" {}
