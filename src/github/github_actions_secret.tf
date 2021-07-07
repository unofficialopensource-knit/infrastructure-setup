resource "github_actions_secret" "email_service_codecov_token" {
  repository      = github_repository.email_service.name
  secret_name     = "CODECOV_TOKEN"
  plaintext_value = var.EMAIL_SERVICE_CODECOV_TOKEN
}

resource "github_actions_secret" "api_gateway_codecov_token" {
  repository      = github_repository.api_gateway.name
  secret_name     = "CODECOV_TOKEN"
  plaintext_value = var.API_GATEWAY_CODECOV_TOKEN
}

resource "github_actions_secret" "gambley_backend_deepsource_dsn" {
  repository      = github_repository.gambley_backend.name
  secret_name     = "DEEPSOURCE_DSN"
  plaintext_value = var.GAMBLEY_BACKEND_DEEPSOURCE_DSN
}
