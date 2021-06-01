resource "github_actions_secret" "email_service_codecov_token" {
  repository      = "email_service"
  secret_name     = "CODECOV_TOKEN"
  plaintext_value = var.EMAIL_SERVICE_CODECOV_TOKEN
}

resource "github_actions_secret" "api_gateway_codecov_token" {
  repository      = "api_gateway"
  secret_name     = "CODECOV_TOKEN"
  plaintext_value = var.API_GATEWAY_CODECOV_TOKEN
}
