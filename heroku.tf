resource "heroku_app" "hashitalks_latam_demo" {
  name   = "heroku-terraform-demo"
  region = "us"
  organization {
    name = "hashitalks-latam"
  }
}

// First, create a pipeline.
resource "heroku_pipeline" "hashitalks_latam" {
  name = "hashitalks-latam"
}

// Then, add the GitHub repository integration with the pipeline.
resource "herokux_pipeline_github_integration" "hashitalks_latam" {
  pipeline_id = heroku_pipeline.hashitalks_latam.id
  org_repo = "hdanniel/hashitalks-latam"
}

resource "heroku_pipeline_coupling" "staging" {
  app      = heroku_app.hashitalks_latam_demo.id
  pipeline = heroku_pipeline.hashitalks_latam.id
  stage    = "staging"
}
