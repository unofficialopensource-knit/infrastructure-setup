resource "github_actions_secret" "codecov_token_email_service" {
  repository      = "email_service"
  secret_name     = "CODECOV_TOKEN"
  plaintext_value = var.EMAIL_SERVICE_CODECOV_TOKEN
}

resource "github_actions_secret" "codecov_token_api_gateway" {
  repository      = "api_gateway"
  secret_name     = "CODECOV_TOKEN"
  plaintext_value = var.API_GATEWAY_CODECOV_TOKEN
}
