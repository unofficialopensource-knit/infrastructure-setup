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

resource "github_actions_organization_secret" "gambley_cd_access_key" {
  secret_name     = "SERVICE_MANAGEMENT_USER_AWS_ACCESS_KEY"
  plaintext_value = var.SERVICE_MANAGEMENT_USER_AWS_ACCESS_KEY
  visibility      = "all"
}

resource "github_actions_organization_secret" "gambley_cd_secret_key" {
  secret_name     = "SERVICE_MANAGEMENT_USER_AWS_SECRET_KEY"
  plaintext_value = var.SERVICE_MANAGEMENT_USER_AWS_SECRET_KEY
  visibility      = "all"
}

resource "github_actions_organization_secret" "snyk_secret_key" {
  secret_name     = "SNYK_SECRET_KEY"
  plaintext_value = var.SNYK_SECRET_KEY
  visibility      = "all"
}
