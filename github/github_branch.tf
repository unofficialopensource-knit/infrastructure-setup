resource "github_branch" "api_gateway_main" {
    repository = github_repository.api_gateway.name
    branch = "main"
}

resource "github_branch" "api_gateway_release" {
    repository = github_repository.api_gateway.name
    branch = "release"
}

resource "github_branch" "email_service_main" {
    repository = github_repository.email_service.name
    branch = "main"
}

resource "github_branch" "email_service_release" {
    repository = github_repository.email_service.name
    branch = "release"
}

resource "github_branch" "platform_setup_main" {
    repository = github_repository.platform_setup.name
    branch = "main"
}

resource "github_branch" "user_management_service_main" {
    repository = github_repository.user_management_service.name
    branch = "main"
}

resource "github_branch" "user_management_service_release" {
    repository = github_repository.user_management_service.name
    branch = "release"
}

resource "github_branch" "web_client_main" {
    repository = github_repository.web_client.name
    branch = "main"
}

resource "github_branch" "web_client_release" {
    repository = github_repository.web_client.name
    branch = "release"
}

resource "github_branch" "wiki_main" {
    repository = github_repository.wiki.name
    branch = "main"
}
