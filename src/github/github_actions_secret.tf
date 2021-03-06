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

resource "github_actions_secret" "gambley_backend_ssh_user" {
  repository      = github_repository.gambley_backend.name
  secret_name     = "SSH_USER"
  plaintext_value = var.GAMBLEY_BACKEND_SSH_USER
}

resource "github_actions_secret" "gambley_backend_ssh_host" {
  repository      = github_repository.gambley_backend.name
  secret_name     = "SSH_HOST"
  plaintext_value = var.GAMBLEY_BACKEND_SSH_HOST
}
