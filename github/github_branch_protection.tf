resource "github_branch_protection" "api_gateway_branch_protection_main" {
  repository_id = github_repository.api_gateway.node_id
  pattern       = "main"
  enforce_admins = false
  require_signed_commits = false
  required_status_checks {
      strict = true
      contexts = [
          "pyup.io/safety-ci",
          "lint",
          "test",
          "build"
      ]
  }
}

# resource "github_branch_protection" "api_gateway_branch_protection_release" {}
