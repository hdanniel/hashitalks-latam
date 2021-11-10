resource "heroku_app" "hashitalks_latam_demo" {
  name   = "heroku-terraform-demo"
  region = "us"
  organization {
    name = "hashitalks-latam"
  }
}
