resource "github_branch_default" "api_gateway_default_branch" {
    repository = github_repository.api_gateway.name
    branch = github_branch.api_gateway_release.branch
}

resource "github_branch_default" "email_service_default_branch" {
    repository = github_repository.email_service.name
    branch = github_branch.email_service_release.branch
}

resource "github_branch_default" "platform_setup_default_branch" {
    repository = github_repository.platform_setup.name
    branch = github_branch.platform_setup_main.branch
}

resource "github_branch_default" "user_management_service_default_branch" {
    repository = github_repository.user_management_service.name
    branch = github_branch.user_management_service_release.branch
}

resource "github_branch_default" "web_client_default_branch" {
    repository = github_repository.web_client.name
    branch = github_branch.web_client_release.branch
}
