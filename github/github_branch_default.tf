resource "github_branch_default" "api_gateway_default_branch" {
    repository = github_repository.api_gateway.name
    branch = github_branch.api_gateway_release.branch
}
