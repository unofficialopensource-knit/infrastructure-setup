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

resource "github_branch_protection" "email_service_branch_protection_main" {
  repository_id          = github_repository.email_service.node_id
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

resource "github_branch_protection" "email_service_branch_protection_release" {
  repository_id          = github_repository.email_service.node_id
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

resource "github_branch_protection" "platform_setup_branch_protection_main" {
  repository_id          = github_repository.platform_setup.node_id
  pattern                = "main"
  enforce_admins         = false
  require_signed_commits = true
}

resource "github_branch_protection" "profile_service_branch_protection_main" {
  repository_id          = github_repository.profile_service.node_id
  pattern                = "main"
  enforce_admins         = false
  require_signed_commits = false
  required_status_checks {
    strict = true
    contexts = [
      "lint",
      "build"
    ]
  }
}

resource "github_branch_protection" "profile_service_branch_protection_release" {
  repository_id          = github_repository.profile_service.node_id
  pattern                = "release"
  enforce_admins         = false
  require_signed_commits = true
  required_status_checks {
    strict = true
    contexts = [
      "lint",
      "build"
    ]
  }
  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "web_client_branch_protection_main" {
  repository_id          = github_repository.web_client.node_id
  pattern                = "main"
  enforce_admins         = false
  require_signed_commits = false
  required_status_checks {
    strict = true
    contexts = [
      "test",
      "build"
    ]
  }
}

resource "github_branch_protection" "web_client_branch_protection_release" {
  repository_id          = github_repository.web_client.node_id
  pattern                = "release"
  enforce_admins         = false
  require_signed_commits = true
  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    required_approving_review_count = 1
  }
}


resource "github_branch_protection" "wiki_branch_protection_main" {
  repository_id          = github_repository.wiki.node_id
  pattern                = "main"
  enforce_admins         = false
  require_signed_commits = true
}
