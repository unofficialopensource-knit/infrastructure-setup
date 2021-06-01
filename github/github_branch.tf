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
