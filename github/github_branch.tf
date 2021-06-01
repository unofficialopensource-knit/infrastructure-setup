resource "github_branch" "api_gateway_main" {
    repository = github_repository.api_gateway.name
    branch = "main"
}

resource "github_branch" "api_gateway_release" {
    repository = github_repository.api_gateway.name
    branch = "release"
}
