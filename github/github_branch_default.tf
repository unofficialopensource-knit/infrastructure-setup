resource "github_branch_default" "api_gateway_default_branch" {
    repository = github_repository.api_gateway.name
    branch = github_branch.api_gateway_release.branch
}

resource "github_branch_default" "email_service_default_branch" {
    repository = github_repository.email_service.name
    branch = github_branch.email_service_release.branch
}
