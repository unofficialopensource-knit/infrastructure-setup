resource "github_actions_organization_secret" "dockerhub_username" {
  secret_name     = "DOCKERHUB_USERNAME"
  plaintext_value = var.DOCKERHUB_USERNAME
  visibility      = "all"
}

resource "github_actions_organization_secret" "dockerhub_token" {
  secret_name     = "DOCKERHUB_TOKEN"
  plaintext_value = var.DOCKERHUB_TOKEN
  visibility      = "all"
}

resource "github_actions_organization_secret" "heroku_api_key" {
  secret_name     = "HEROKU_API_KEY"
  plaintext_value = var.HEROKU_API_KEY
  visibility      = "all"
}

resource "github_actions_organization_secret" "heroku_email" {
  secret_name     = "HEROKU_EMAIL"
  plaintext_value = var.HEROKU_EMAIL
  visibility      = "all"
}
