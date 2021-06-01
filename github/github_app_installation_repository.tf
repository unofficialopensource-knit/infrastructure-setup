resource "github_app_installation_repository" "api_gateway_codecov_app" {
    installation_id = "16927671"
    repository = github_repository.api_gateway.name
}

resource "github_app_installation_repository" "email_service_codecov_app" {
    installation_id = "16927671"
    repository = github_repository.email_service.name
}

resource "github_app_installation_repository" "user_management_service_codecov_app" {
    installation_id = "16927671"
    repository = github_repository.user_management_service.name
}

resource "github_app_installation_repository" "web_client_codecov_app" {
    installation_id = "16927671"
    repository = github_repository.web_client.name
}
