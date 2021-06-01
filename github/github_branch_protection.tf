resource "github_branch_protection" "api_gateway_branch_protection_main" {
  repository_id          = github_repository.api_gateway.node_id
  pattern                = "main"
  enforce_admins         = false
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

resource "github_branch_protection" "api_gateway_branch_protection_release" {
  repository_id          = github_repository.api_gateway.node_id
  pattern                = "release"
  enforce_admins         = false
  require_signed_commits = true
  required_status_checks {
    strict = true
    contexts = [
      "pyup.io/safety-ci",
      "lint",
      "test",
      "build"
    ]
  }
  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    required_approving_review_count = 1
  }
}
