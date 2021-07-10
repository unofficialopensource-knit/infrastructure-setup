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

resource "github_actions_secret" "gambley_backend_mail_username" {
  repository      = github_repository.gambley_backend.name
  secret_name     = "MAIL_USERNAME"
  plaintext_value = var.GAMBLEY_BACKEND_MAIL_USERNAME
}

resource "github_actions_secret" "gambley_backend_mail_password" {
  repository      = github_repository.gambley_backend.name
  secret_name     = "MAIL_PASSWORD"
  plaintext_value = var.GAMBLEY_BACKEND_MAIL_PASSWORD
}

resource "github_actions_secret" "gambley_backend_supress_send" {
  repository      = github_repository.gambley_backend.name
  secret_name     = "SUPPRESS_SEND"
  plaintext_value = var.GAMBLEY_BACKEND_SUPPRESS_SEND
}
