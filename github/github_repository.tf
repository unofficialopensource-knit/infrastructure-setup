resource "github_repository" "auth_service" {
  name                   = "auth_service"
  description            = "Codebase for auth service"
  visibility             = "public"
  has_issues             = true
  has_projects           = false
  has_wiki               = false
  is_template            = false
  allow_merge_commit     = false
  allow_squash_merge     = true
  allow_rebase_merge     = false
  delete_branch_on_merge = true
  has_downloads          = true
  auto_init              = false
}

resource "github_repository" "bet_service" {
  name                   = "bet_service"
  description            = "Codebase for bet service"
  visibility             = "public"
  has_issues             = true
  has_projects           = false
  has_wiki               = false
  is_template            = false
  allow_merge_commit     = false
  allow_squash_merge     = true
  allow_rebase_merge     = false
  delete_branch_on_merge = true
  has_downloads          = true
  auto_init              = false
}

resource "github_repository" "email_service" {
  name                   = "email_service"
  description            = "Codebase for email service"
  visibility             = "public"
  has_issues             = true
  has_projects           = false
  has_wiki               = false
  is_template            = false
  allow_merge_commit     = false
  allow_squash_merge     = true
  allow_rebase_merge     = false
  delete_branch_on_merge = true
  has_downloads          = true
  auto_init              = false
}
